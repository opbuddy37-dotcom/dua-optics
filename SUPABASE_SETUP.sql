-- DUA OPTICS: allow the browser app to read/write the existing tables.
-- Run this in Supabase Dashboard -> SQL Editor.

alter table public.customers enable row level security;
alter table public.visits enable row level security;
alter table public.audit_logs enable row level security;

drop policy if exists "dua_optics_customers_all" on public.customers;
create policy "dua_optics_customers_all" on public.customers for all to anon, authenticated using (true) with check (true);

drop policy if exists "dua_optics_visits_all" on public.visits;
create policy "dua_optics_visits_all" on public.visits for all to anon, authenticated using (true) with check (true);

drop policy if exists "dua_optics_audit_all" on public.audit_logs;
create policy "dua_optics_audit_all" on public.audit_logs for all to anon, authenticated using (true) with check (true);
