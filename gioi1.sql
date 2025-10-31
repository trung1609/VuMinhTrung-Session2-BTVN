--
-- PostgreSQL database dump
--

\restrict WktjpCtwcLbCCgZ2Ik0JBs1HZ3sB8absd1IY6c7FNQpnXISCxI7hGvzmKkvMe9X

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-10-31 15:29:55

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
-- TOC entry 5050 (class 1262 OID 16471)
-- Name: SalesDB; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "SalesDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Vietnamese_Vietnam.1258';


ALTER DATABASE "SalesDB" OWNER TO postgres;

\unrestrict WktjpCtwcLbCCgZ2Ik0JBs1HZ3sB8absd1IY6c7FNQpnXISCxI7hGvzmKkvMe9X
\connect "SalesDB"
\restrict WktjpCtwcLbCCgZ2Ik0JBs1HZ3sB8absd1IY6c7FNQpnXISCxI7hGvzmKkvMe9X

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
-- TOC entry 6 (class 2615 OID 16472)
-- Name: sales; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA sales;


ALTER SCHEMA sales OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 221 (class 1259 OID 16474)
-- Name: customers; Type: TABLE; Schema: sales; Owner: postgres
--

CREATE TABLE sales.customers (
    customer_id bigint NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    email character varying(255) NOT NULL,
    phone integer
);


ALTER TABLE sales.customers OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16473)
-- Name: customers_customer_id_seq; Type: SEQUENCE; Schema: sales; Owner: postgres
--

CREATE SEQUENCE sales.customers_customer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE sales.customers_customer_id_seq OWNER TO postgres;

--
-- TOC entry 5051 (class 0 OID 0)
-- Dependencies: 220
-- Name: customers_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: sales; Owner: postgres
--

ALTER SEQUENCE sales.customers_customer_id_seq OWNED BY sales.customers.customer_id;


--
-- TOC entry 227 (class 1259 OID 16523)
-- Name: orderitems; Type: TABLE; Schema: sales; Owner: postgres
--

CREATE TABLE sales.orderitems (
    order_item_id bigint NOT NULL,
    order_id bigint NOT NULL,
    product_id bigint NOT NULL,
    quantity integer,
    CONSTRAINT orderitems_quantity_check CHECK ((quantity > 1))
);


ALTER TABLE sales.orderitems OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16522)
-- Name: orderitems_order_item_id_seq; Type: SEQUENCE; Schema: sales; Owner: postgres
--

CREATE SEQUENCE sales.orderitems_order_item_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE sales.orderitems_order_item_id_seq OWNER TO postgres;

--
-- TOC entry 5052 (class 0 OID 0)
-- Dependencies: 226
-- Name: orderitems_order_item_id_seq; Type: SEQUENCE OWNED BY; Schema: sales; Owner: postgres
--

ALTER SEQUENCE sales.orderitems_order_item_id_seq OWNED BY sales.orderitems.order_item_id;


--
-- TOC entry 225 (class 1259 OID 16508)
-- Name: orders; Type: TABLE; Schema: sales; Owner: postgres
--

CREATE TABLE sales.orders (
    order_id bigint NOT NULL,
    customer_id bigint NOT NULL,
    order_date timestamp without time zone NOT NULL
);


ALTER TABLE sales.orders OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16507)
-- Name: orders_order_id_seq; Type: SEQUENCE; Schema: sales; Owner: postgres
--

CREATE SEQUENCE sales.orders_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE sales.orders_order_id_seq OWNER TO postgres;

--
-- TOC entry 5053 (class 0 OID 0)
-- Dependencies: 224
-- Name: orders_order_id_seq; Type: SEQUENCE OWNED BY; Schema: sales; Owner: postgres
--

ALTER SEQUENCE sales.orders_order_id_seq OWNED BY sales.orders.order_id;


--
-- TOC entry 223 (class 1259 OID 16487)
-- Name: products; Type: TABLE; Schema: sales; Owner: postgres
--

CREATE TABLE sales.products (
    product_id bigint NOT NULL,
    product_name character varying(100) NOT NULL,
    price numeric(10,2) NOT NULL,
    stock_quantity integer NOT NULL
);


ALTER TABLE sales.products OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16486)
-- Name: products_product_id_seq; Type: SEQUENCE; Schema: sales; Owner: postgres
--

CREATE SEQUENCE sales.products_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE sales.products_product_id_seq OWNER TO postgres;

--
-- TOC entry 5054 (class 0 OID 0)
-- Dependencies: 222
-- Name: products_product_id_seq; Type: SEQUENCE OWNED BY; Schema: sales; Owner: postgres
--

ALTER SEQUENCE sales.products_product_id_seq OWNED BY sales.products.product_id;


--
-- TOC entry 4872 (class 2604 OID 16477)
-- Name: customers customer_id; Type: DEFAULT; Schema: sales; Owner: postgres
--

ALTER TABLE ONLY sales.customers ALTER COLUMN customer_id SET DEFAULT nextval('sales.customers_customer_id_seq'::regclass);


--
-- TOC entry 4875 (class 2604 OID 16526)
-- Name: orderitems order_item_id; Type: DEFAULT; Schema: sales; Owner: postgres
--

ALTER TABLE ONLY sales.orderitems ALTER COLUMN order_item_id SET DEFAULT nextval('sales.orderitems_order_item_id_seq'::regclass);


--
-- TOC entry 4874 (class 2604 OID 16511)
-- Name: orders order_id; Type: DEFAULT; Schema: sales; Owner: postgres
--

ALTER TABLE ONLY sales.orders ALTER COLUMN order_id SET DEFAULT nextval('sales.orders_order_id_seq'::regclass);


--
-- TOC entry 4873 (class 2604 OID 16490)
-- Name: products product_id; Type: DEFAULT; Schema: sales; Owner: postgres
--

ALTER TABLE ONLY sales.products ALTER COLUMN product_id SET DEFAULT nextval('sales.products_product_id_seq'::regclass);


--
-- TOC entry 5038 (class 0 OID 16474)
-- Dependencies: 221
-- Data for Name: customers; Type: TABLE DATA; Schema: sales; Owner: postgres
--

COPY sales.customers (customer_id, first_name, last_name, email, phone) FROM stdin;
\.


--
-- TOC entry 5044 (class 0 OID 16523)
-- Dependencies: 227
-- Data for Name: orderitems; Type: TABLE DATA; Schema: sales; Owner: postgres
--

COPY sales.orderitems (order_item_id, order_id, product_id, quantity) FROM stdin;
\.


--
-- TOC entry 5042 (class 0 OID 16508)
-- Dependencies: 225
-- Data for Name: orders; Type: TABLE DATA; Schema: sales; Owner: postgres
--

COPY sales.orders (order_id, customer_id, order_date) FROM stdin;
\.


--
-- TOC entry 5040 (class 0 OID 16487)
-- Dependencies: 223
-- Data for Name: products; Type: TABLE DATA; Schema: sales; Owner: postgres
--

COPY sales.products (product_id, product_name, price, stock_quantity) FROM stdin;
\.


--
-- TOC entry 5055 (class 0 OID 0)
-- Dependencies: 220
-- Name: customers_customer_id_seq; Type: SEQUENCE SET; Schema: sales; Owner: postgres
--

SELECT pg_catalog.setval('sales.customers_customer_id_seq', 1, false);


--
-- TOC entry 5056 (class 0 OID 0)
-- Dependencies: 226
-- Name: orderitems_order_item_id_seq; Type: SEQUENCE SET; Schema: sales; Owner: postgres
--

SELECT pg_catalog.setval('sales.orderitems_order_item_id_seq', 1, false);


--
-- TOC entry 5057 (class 0 OID 0)
-- Dependencies: 224
-- Name: orders_order_id_seq; Type: SEQUENCE SET; Schema: sales; Owner: postgres
--

SELECT pg_catalog.setval('sales.orders_order_id_seq', 1, false);


--
-- TOC entry 5058 (class 0 OID 0)
-- Dependencies: 222
-- Name: products_product_id_seq; Type: SEQUENCE SET; Schema: sales; Owner: postgres
--

SELECT pg_catalog.setval('sales.products_product_id_seq', 1, false);


--
-- TOC entry 4878 (class 2606 OID 16485)
-- Name: customers customers_email_key; Type: CONSTRAINT; Schema: sales; Owner: postgres
--

ALTER TABLE ONLY sales.customers
    ADD CONSTRAINT customers_email_key UNIQUE (email);


--
-- TOC entry 4880 (class 2606 OID 16483)
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: sales; Owner: postgres
--

ALTER TABLE ONLY sales.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);


--
-- TOC entry 4886 (class 2606 OID 16532)
-- Name: orderitems orderitems_pkey; Type: CONSTRAINT; Schema: sales; Owner: postgres
--

ALTER TABLE ONLY sales.orderitems
    ADD CONSTRAINT orderitems_pkey PRIMARY KEY (order_item_id);


--
-- TOC entry 4884 (class 2606 OID 16516)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: sales; Owner: postgres
--

ALTER TABLE ONLY sales.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (order_id);


--
-- TOC entry 4882 (class 2606 OID 16496)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: sales; Owner: postgres
--

ALTER TABLE ONLY sales.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);


--
-- TOC entry 4888 (class 2606 OID 16533)
-- Name: orderitems orderitems_order_id_fkey; Type: FK CONSTRAINT; Schema: sales; Owner: postgres
--

ALTER TABLE ONLY sales.orderitems
    ADD CONSTRAINT orderitems_order_id_fkey FOREIGN KEY (order_id) REFERENCES sales.orders(order_id);


--
-- TOC entry 4889 (class 2606 OID 16538)
-- Name: orderitems orderitems_product_id_fkey; Type: FK CONSTRAINT; Schema: sales; Owner: postgres
--

ALTER TABLE ONLY sales.orderitems
    ADD CONSTRAINT orderitems_product_id_fkey FOREIGN KEY (product_id) REFERENCES sales.products(product_id);


--
-- TOC entry 4887 (class 2606 OID 16517)
-- Name: orders orders_customer_id_fkey; Type: FK CONSTRAINT; Schema: sales; Owner: postgres
--

ALTER TABLE ONLY sales.orders
    ADD CONSTRAINT orders_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES sales.customers(customer_id);


-- Completed on 2025-10-31 15:29:56

--
-- PostgreSQL database dump complete
--

\unrestrict WktjpCtwcLbCCgZ2Ik0JBs1HZ3sB8absd1IY6c7FNQpnXISCxI7hGvzmKkvMe9X

