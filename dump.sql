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
    price text NOT NULL,
    status boolean DEFAULT true NOT NULL,
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

INSERT INTO public.services VALUES (1, 2, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.maryhelp.com.br%2Fservico%2Flavadeira&psig=AOvVaw0NysQqjh60xJQ5EirCSl-l&ust=1692062130406000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCNDV8eP82oADFQAAAAAdAAAAABAE', 'Maria Clara', '74981197004', 'Passadeira', '50,00', true, '2023-08-14 10:06:01.458162');
INSERT INTO public.services VALUES (2, 2, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.maryhelp.com.br%2Fservico%2Fpassadeira&psig=AOvVaw3uof7q_IGngIbZ5sbZZNQr&ust=1692105557477000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCOit08ee3IADFQAAAAAdAAAAABAE', 'Lúcia', '87988173172', 'Passadeira', '70,00', true, '2023-08-14 10:20:15.393452');
INSERT INTO public.services VALUES (3, 2, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.maryhelp.com.br%2Fdicas%2Fdicas-para-organizar-a-rotina-da-faxineira%2F&psig=AOvVaw2f0nmBQcknztJd4qK3ZoSL&ust=1692106067806000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCPi61Lqg3IADFQAAAAAdAAAAABAI', 'Fábia', '74981197004', 'Faxineira', '120,00', true, '2023-08-14 10:28:21.237792');
INSERT INTO public.services VALUES (4, 2, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.maryhelp.com.br%2Fdicas%2Fdicas-para-organizar-a-rotina-da-faxineira%2F&psig=AOvVaw2f0nmBQcknztJd4qK3ZoSL&ust=1692106067806000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCPi61Lqg3IADFQAAAAAdAAAAABAI', 'Fábia', '74981197004', 'Faxineira', '120,00', true, '2023-08-14 10:28:58.688364');
INSERT INTO public.services VALUES (5, 2, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.maryhelp.com.br%2Fdicas%2Fdicas-para-organizar-a-rotina-da-faxineira%2F&psig=AOvVaw2f0nmBQcknztJd4qK3ZoSL&ust=1692106067806000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCPi61Lqg3IADFQAAAAAdAAAAABAI', 'Fábia', '74981197004', 'Faxineira', '120,00', true, '2023-08-14 10:29:02.413633');
INSERT INTO public.services VALUES (6, 2, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.maryhelp.com.br%2Fdicas%2Fdicas-para-organizar-a-rotina-da-faxineira%2F&psig=AOvVaw2f0nmBQcknztJd4qK3ZoSL&ust=1692106067806000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCPi61Lqg3IADFQAAAAAdAAAAABAI', 'Fábia', '74981197004', 'Faxineira', '120,00', true, '2023-08-14 10:29:28.77584');
INSERT INTO public.services VALUES (7, 2, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.maryhelp.com.br%2Fdicas%2Fdicas-para-organizar-a-rotina-da-faxineira%2F&psig=AOvVaw2f0nmBQcknztJd4qK3ZoSL&ust=1692106067806000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCPi61Lqg3IADFQAAAAAdAAAAABAI', 'Catarina', '87984632154', 'Faxineira', '120,00', true, '2023-08-14 10:32:28.247367');
INSERT INTO public.services VALUES (8, 2, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.maryhelp.com.br%2Fservico%2Flavadeira&psig=AOvVaw0NysQqjh60xJQ5EirCSl-l&ust=1692062130406000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCNDV8eP82oADFQAAAAAdAAAAABAE', 'Maria Clara', '74981197004', 'Passadeira', '50,00', true, '2023-08-14 12:03:00.388078');
INSERT INTO public.services VALUES (9, 2, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fmaridodealuguel.com.br%2Fencanador-sobradinho-df%2F&psig=AOvVaw0uYuY_Izf-treqY1DV5Sht&ust=1692118355821000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCLDppp7O3IADFQAAAAAdAAAAABAJ', 'Fernando', '74981197004', 'Encanador', '70,00', true, '2023-08-14 13:53:24.19255');
INSERT INTO public.services VALUES (10, 2, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fmaridodealuguel.com.br%2Fpintor-sobradinho-df%2F&psig=AOvVaw2KP5CXpY-PGbLoGQ9Cl5kT&ust=1692124507730000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCKD11JPl3IADFQAAAAAdAAAAABAE', 'Maria Clara', '74981197004', 'Pintor', '120,00', true, '2023-08-14 15:37:55.076017');


--
-- Data for Name: tokens; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.tokens VALUES (1, 1, 'd32ef805-7b74-43f6-b399-4bdf24738498', '2023-08-10 15:05:20.274624');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.users VALUES (1, 'Maria Clara', 'maria@driven.com', 'Petrolina', '74981197004', '$2b$10$aUIZCyJeeu8DClmDBZXpVetrOg3UBKnSjjfQLIY9KP2w8biUPhMCm', '2023-08-10 15:03:28.468175');
INSERT INTO public.users VALUES (2, 'Maria Clara', 'mariaclara_petro@hotmail.com', 'JUAZEIRO', '74981197004', '$2b$10$gKRFIa5lwWJ7lS3ekFzug.9bv687Gi.la5DT41FSN/Ji.ddYQmIm.', '2023-08-10 15:45:34.271467');
INSERT INTO public.users VALUES (3, 'Maria Clara', 'mariaclara@driven.com', 'JUAZEIRO', '74981197004', '$2b$10$gZqRvKBgAAyfQ3X.1EQ0.eMm.angSnUmeAnzkXuT5/qpYDCudusd2', '2023-08-12 13:49:38.846617');
INSERT INTO public.users VALUES (4, 'Maria Clara', 'mariaclara@hotmail.com', 'JUAZEIRO', '74981197004', '$2b$10$1kTXEkP3DRT9DQij9uofdutrMofsw2LV9HMVfcYz2xRxQqVqYn8I.', '2023-08-12 14:11:10.693347');
INSERT INTO public.users VALUES (5, 'Maria Gomes', 'maria@hotmail.com', 'PETROLINA', '74981197004', '$2b$10$/kuf7lNQvr0qideAaFoUdOH3yI.QA1tfcBmTp6N4icCh2iUIrRgva', '2023-08-12 18:25:38.666656');


--
-- Name: services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.services_id_seq', 10, true);


--
-- Name: tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tokens_id_seq', 22, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 5, true);


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
-- Name: services services_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT "services_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

