-- Execute este script no SQL Editor do seu painel Supabase
create table if not exists public.contas (
  id uuid default gen_random_uuid() primary key,
  user_id uuid references auth.users(id),
  tipo text not null check (tipo in ('agua', 'luz')),
  empresa text not null,
  valor numeric(10,2) not null,
  vencimento text not null,
  consumo text not null,
  referencia text not null,
  status text default 'Válida',
  created_at timestamp with time zone default timezone('utc'::text, now()) not null
);

alter table public.contas enable row level security;

create policy "Permitir leitura e insercao de contas"
  on public.contas
  for all
  using (true)
  with check (true);
