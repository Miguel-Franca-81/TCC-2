create table if not exists public.contas (
  id uuid default gen_random_uuid() primary key,
  tipo text not null check (tipo in ('agua', 'luz')),
  empresa text not null,
  valor numeric(10,2) not null,
  vencimento text not null,
  consumo text not null,
  referencia text not null,
  observacoes text,
  codigo_barras text,
  arquivo_nome text,
  created_at timestamp with time zone default timezone('utc'::text, now()) not null
);

alter table public.contas enable row level security;

create policy "Permitir acesso as contas"
  on public.contas
  for all
  using (true)
  with check (true);
