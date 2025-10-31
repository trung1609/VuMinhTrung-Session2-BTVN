--
-- PostgreSQL database dump
--

\restrict zVT2H41uYf2xWjgE63zEvuRxjSs1zqFqDe0DblTrxIJqeiDYhOoXoPAPoY6ydw5

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-10-31 11:31:33

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 5014 (class 1262 OID 17134)
-- Name: LibraryDB; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "LibraryDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';


ALTER DATABASE "LibraryDB" OWNER TO postgres;

\unrestrict zVT2H41uYf2xWjgE63zEvuRxjSs1zqFqDe0DblTrxIJqeiDYhOoXoPAPoY6ydw5
\connect "LibraryDB"
\restrict zVT2H41uYf2xWjgE63zEvuRxjSs1zqFqDe0DblTrxIJqeiDYhOoXoPAPoY6ydw5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 6 (class 2615 OID 17135)
-- Name: library; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA library;


ALTER SCHEMA library OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 221 (class 1259 OID 17137)
-- Name: books; Type: TABLE; Schema: library; Owner: postgres
--

CREATE TABLE library.books (
    book_id bigint NOT NULL,
    title character varying(100) NOT NULL,
    author character varying(50) NOT NULL,
    published_year integer NOT NULL,
    price numeric(10,2) NOT NULL
);


ALTER TABLE library.books OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 17136)
-- Name: books_book_id_seq; Type: SEQUENCE; Schema: library; Owner: postgres
--

CREATE SEQUENCE library.books_book_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE library.books_book_id_seq OWNER TO postgres;

--
-- TOC entry 5015 (class 0 OID 0)
-- Dependencies: 220
-- Name: books_book_id_seq; Type: SEQUENCE OWNED BY; Schema: library; Owner: postgres
--

ALTER SEQUENCE library.books_book_id_seq OWNED BY library.books.book_id;


--
-- TOC entry 4857 (class 2604 OID 17140)
-- Name: books book_id; Type: DEFAULT; Schema: library; Owner: postgres
--

ALTER TABLE ONLY library.books ALTER COLUMN book_id SET DEFAULT nextval('library.books_book_id_seq'::regclass);


--
-- TOC entry 5008 (class 0 OID 17137)
-- Dependencies: 221
-- Data for Name: books; Type: TABLE DATA; Schema: library; Owner: postgres
--

COPY library.books (book_id, title, author, published_year, price) FROM stdin;
\.


--
-- TOC entry 5016 (class 0 OID 0)
-- Dependencies: 220
-- Name: books_book_id_seq; Type: SEQUENCE SET; Schema: library; Owner: postgres
--

SELECT pg_catalog.setval('library.books_book_id_seq', 1, false);


--
-- TOC entry 4859 (class 2606 OID 17147)
-- Name: books books_pkey; Type: CONSTRAINT; Schema: library; Owner: postgres
--

ALTER TABLE ONLY library.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (book_id);


-- Completed on 2025-10-31 11:31:34

--
-- PostgreSQL database dump complete
--

\unrestrict zVT2H41uYf2xWjgE63zEvuRxjSs1zqFqDe0DblTrxIJqeiDYhOoXoPAPoY6ydw5

