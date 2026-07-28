-- ============================================================
-- Volt Gadgets Database
-- Compatible with Supabase PostgreSQL
-- ============================================================

-- Enable UUID extension
create extension if not exists "pgcrypto";

-- ============================================================
-- PRODUCTS TABLE
-- ============================================================

create table if not exists public.products (
    id uuid primary key default gen_random_uuid(),

    name text not null,

    price numeric not null,

    category text not null,

    emoji text default '📦',

    images text[] default '{}',

    description text,

    in_stock boolean default true,

    featured boolean default false,

    created_at timestamptz default now()
);

-- ============================================================
-- ORDERS TABLE
-- ============================================================

create table if not exists public.orders (

    id uuid primary key default gen_random_uuid(),

    order_number text unique not null,

    items jsonb not null,

    listed_total numeric not null,

    offer_total numeric,

    amount_paid numeric,

    customer_name text not null,

    customer_phone text not null,

    customer_email text,

    customer_address text,

    customer_note text,

    payment_status text default 'pending',

    payment_ref text,

    channel text not null,

    seen boolean default false,

    created_at timestamptz default now()
);

-- ============================================================
-- INDEXES
-- ============================================================

create index if not exists idx_products_category
on products(category);

create index if not exists idx_products_featured
on products(featured);

create index if not exists idx_orders_created
on orders(created_at desc);

create index if not exists idx_orders_payment
on orders(payment_status);

-- ============================================================
-- ROW LEVEL SECURITY
-- ============================================================

alter table products enable row level security;
alter table orders enable row level security;

-- ============================================================
-- PRODUCTS POLICIES
-- ============================================================

create policy "Anyone can view products"
on products
for select
using (true);

create policy "Authenticated users can insert products"
on products
for insert
to authenticated
with check (true);

create policy "Authenticated users can update products"
on products
for update
to authenticated
using (true);

create policy "Authenticated users can delete products"
on products
for delete
to authenticated
using (true);

-- ============================================================
-- ORDERS POLICIES
-- ============================================================

create policy "Anyone can create orders"
on orders
for insert
to anon, authenticated
with check (true);

create policy "Authenticated users can read orders"
on orders
for select
to authenticated
using (true);

create policy "Authenticated users can update orders"
on orders
for update
to authenticated
using (true);

create policy "Authenticated users can delete orders"
on orders
for delete
to authenticated
using (true);

-- ============================================================
-- SAMPLE PRODUCT
-- ============================================================

insert into products
(
    name,
    price,
    category,
    emoji,
    description,
    featured
)
values
(
    'Sample Phone',
    250000,
    'Phones',
    '📱',
    'Replace this with your own product.',
    true
);
