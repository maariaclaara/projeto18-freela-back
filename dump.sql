--
-- PostgreSQL database dump
--

-- Dumped from database version 14.8 (Ubuntu 14.8-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.8 (Ubuntu 14.8-0ubuntu0.22.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.services (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    photo text NOT NULL,
    name text NOT NULL,
    phone text NOT NULL,
    description text NOT NULL,
    price money NOT NULL,
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL
);


--
-- Name: services_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.services_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.services_id_seq OWNED BY public.services.id;


--
-- Name: tokens; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tokens (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    token character varying(255) NOT NULL,
    "createdAt" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tokens_id_seq OWNED BY public.tokens.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    city text NOT NULL,
    phone text NOT NULL,
    password text NOT NULL,
    "createdAt" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: services id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.services ALTER COLUMN id SET DEFAULT nextval('public.services_id_seq'::regclass);


--
-- Name: tokens id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tokens ALTER COLUMN id SET DEFAULT nextval('public.tokens_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: services; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: tokens; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.tokens VALUES (1, 1, 'd32ef805-7b74-43f6-b399-4bdf24738498', '2023-08-10 15:05:20.274624');
INSERT INTO public.tokens VALUES (24, 2, 'da3a75fa-48bc-47a2-b188-8b0ae6b7b588', '2023-08-14 17:10:39.755361');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.users VALUES (1, 'Maria Clara', 'maria@driven.com', 'Petrolina', '74981197004', '$2b$10$aUIZCyJeeu8DClmDBZXpVetrOg3UBKnSjjfQLIY9KP2w8biUPhMCm', '2023-08-10 15:03:28.468175');
INSERT INTO public.users VALUES (2, 'Maria Clara', 'mariaclara_petro@hotmail.com', 'JUAZEIRO', '74981197004', '$2b$10$gKRFIa5lwWJ7lS3ekFzug.9bv687Gi.la5DT41FSN/Ji.ddYQmIm.', '2023-08-10 15:45:34.271467');
INSERT INTO public.users VALUES (3, 'Maria Clara', 'mariaclara@driven.com', 'JUAZEIRO', '74981197004', '$2b$10$gZqRvKBgAAyfQ3X.1EQ0.eMm.angSnUmeAnzkXuT5/qpYDCudusd2', '2023-08-12 13:49:38.846617');
INSERT INTO public.users VALUES (4, 'Maria Clara', 'mariaclara@hotmail.com', 'JUAZEIRO', '74981197004', '$2b$10$1kTXEkP3DRT9DQij9uofdutrMofsw2LV9HMVfcYz2xRxQqVqYn8I.', '2023-08-12 14:11:10.693347');
INSERT INTO public.users VALUES (5, 'Maria Gomes', 'maria@hotmail.com', 'PETROLINA', '74981197004', '$2b$10$/kuf7lNQvr0qideAaFoUdOH3yI.QA1tfcBmTp6N4icCh2iUIrRgva', '2023-08-12 18:25:38.666656');
INSERT INTO public.users VALUES (6, 'Maria Clara', 'mariazinha@hotmail.com', 'JUAZEIRO', '74981197004', '$2b$10$F0qxXW2BJ2xj6qMpSn/d5e5crg9vajdaXzAqwUeVU2MOmzIMdHKmm', '2023-08-14 16:59:32.205922');


--
-- Name: services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.services_id_seq', 1, false);


--
-- Name: tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tokens_id_seq', 24, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 6, true);


--
-- Name: services services_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_pkey PRIMARY KEY (id);


--
-- Name: tokens tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tokens
    ADD CONSTRAINT tokens_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

