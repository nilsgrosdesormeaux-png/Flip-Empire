-- Flip Empire : schéma Supabase pour brancher l'objet BACKEND de index.html.
-- Les joueurs sont les utilisateurs Supabase Auth (connexion anonyme possible).

-- Sondage hebdomadaire : un vote par joueur et par semaine ISO (ex. '2026-W45').
create table if not exists public.votes (
  id         bigint generated always as identity primary key,
  week       text        not null check (week ~ '^\d{4}-W\d{2}$'),
  player_id  uuid        not null references auth.users(id) on delete cascade default auth.uid(),
  option     text        not null,
  created_at timestamptz not null default now(),
  constraint votes_one_per_week unique (week, player_id)
);
alter table public.votes enable row level security;
create policy "voter pour soi" on public.votes for insert to authenticated with check (player_id = auth.uid());
create policy "voir son vote"  on public.votes for select to authenticated using (player_id = auth.uid());

-- Résultats agrégés (BACKEND.results), sans exposer qui a voté quoi.
create or replace function public.poll_results(p_week text)
returns table(option text, votes bigint) language sql security definer set search_path = public as $$
  select option, count(*) from public.votes where week = p_week group by option
$$;
grant execute on function public.poll_results(text) to anon, authenticated;

-- Sauvegardes : emplacement 0 = partie courante, 1-3 = emplacements, archive = partie mise de côté (inactivité).
create table if not exists public.saves (
  player_id  uuid        not null references auth.users(id) on delete cascade default auth.uid(),
  slot       smallint    not null check (slot between 0 and 3),
  data       jsonb       not null,
  archived   boolean     not null default false,
  updated_at timestamptz not null default now(),
  primary key (player_id, slot, archived)
);
alter table public.saves enable row level security;
create policy "mes sauvegardes" on public.saves for all to authenticated
  using (player_id = auth.uid()) with check (player_id = auth.uid());

-- Droits achetés (Pass Empire, objets premium, récupération d'empire).
-- Écrits uniquement par le webhook Stripe (service role), jamais par le client.
create table if not exists public.entitlements (
  player_id  uuid        not null references auth.users(id) on delete cascade,
  sku        text        not null,              -- 'pass_month', 'av_king', 'recover_empire'…
  valid_until timestamptz,                      -- null = permanent
  stripe_ref text,
  created_at timestamptz not null default now(),
  primary key (player_id, sku)
);
alter table public.entitlements enable row level security;
create policy "voir mes droits" on public.entitlements for select to authenticated using (player_id = auth.uid());
