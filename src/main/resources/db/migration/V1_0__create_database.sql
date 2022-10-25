CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;

CREATE TYPE public.bookstatus AS ENUM (
    'FREE',
    'TAKEN',
    'BOOKED'
);

CREATE TYPE public.orderstatus AS ENUM (
    'IN_PROGRESS',
    'EXPIRED',
    'DONE',
    'PENDING',
    'CANCELLED'
);
CREATE TYPE public.userrole AS ENUM (
    'ADMIN',
    'LIBRARIAN',
    'USER'
);
CREATE TYPE public.userstatus AS ENUM (
    'ACTIVE',
    'BLOCKED'
);
CREATE TABLE IF NOT EXISTS public.author_to_writing (
    id uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    author_id uuid,
    writing_id uuid
);
CREATE TABLE IF NOT EXISTS public.authors (
    id uuid NOT NULL,
    first_name character varying,
    last_name character varying
);
CREATE TABLE IF NOT EXISTS public.books (
    id uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    isbn character varying,
    image_path character varying,
    year numeric,
    max_days_to_order numeric,
    publisher_id uuid,
    title character varying,
    book_status public.bookstatus DEFAULT 'FREE'::public.bookstatus,
    description character varying,
    deleted_flag boolean DEFAULT false
);

CREATE TABLE IF NOT EXISTS public.orders (
    id uuid NOT NULL,
    book_id uuid,
    user_id uuid,
    issue_date date,
    return_date date,
    due_date date,
    status public.orderstatus
);

CREATE TABLE IF NOT EXISTS public.publishers (
    id uuid NOT NULL,
    name character varying
);

CREATE TABLE IF NOT EXISTS public.users (
    id uuid NOT NULL,
    name character varying,
    day_of_birth date,
    login character varying,
    password character varying,
    role public.userrole,
    status public.userstatus
);

CREATE TABLE IF NOT EXISTS public.writing_to_book (
    id uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    writing_id uuid,
    book_id uuid
);
CREATE TABLE IF NOT EXISTS public.writings (
    id uuid NOT NULL,
    title character varying
);

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT author_pkey PRIMARY KEY (id);


ALTER TABLE ONLY public.author_to_writing
    ADD CONSTRAINT author_to_writing_pkey PRIMARY KEY (id);


ALTER TABLE ONLY public.books
    ADD CONSTRAINT book_pkey PRIMARY KEY (id);

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT order_pkey PRIMARY KEY (id);


ALTER TABLE ONLY public.publishers
    ADD CONSTRAINT publisher_pkey PRIMARY KEY (id);


ALTER TABLE ONLY public.users
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


ALTER TABLE ONLY public.writings
    ADD CONSTRAINT writing_pkey PRIMARY KEY (id);


ALTER TABLE ONLY public.writing_to_book
    ADD CONSTRAINT writing_to_book_pkey PRIMARY KEY (id);
