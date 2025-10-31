--
-- PostgreSQL database dump
--

\restrict IXpcDZUcf0fe3pf9kYCWppd6w6jptOgS5ShciOk4wgZjA4jekqVPfNsU7HD9a6Q

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-10-31 13:19:31

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
-- TOC entry 5038 (class 1262 OID 16407)
-- Name: UniversityDB; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "UniversityDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Vietnamese_Vietnam.1258';


ALTER DATABASE "UniversityDB" OWNER TO postgres;

\unrestrict IXpcDZUcf0fe3pf9kYCWppd6w6jptOgS5ShciOk4wgZjA4jekqVPfNsU7HD9a6Q
\connect "UniversityDB"
\restrict IXpcDZUcf0fe3pf9kYCWppd6w6jptOgS5ShciOk4wgZjA4jekqVPfNsU7HD9a6Q

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
-- TOC entry 6 (class 2615 OID 16408)
-- Name: university; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA university;


ALTER SCHEMA university OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 223 (class 1259 OID 16423)
-- Name: courses; Type: TABLE; Schema: university; Owner: postgres
--

CREATE TABLE university.courses (
    course_id bigint NOT NULL,
    course_name character varying(100) NOT NULL,
    credits integer
);


ALTER TABLE university.courses OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16422)
-- Name: courses_course_id_seq; Type: SEQUENCE; Schema: university; Owner: postgres
--

CREATE SEQUENCE university.courses_course_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE university.courses_course_id_seq OWNER TO postgres;

--
-- TOC entry 5039 (class 0 OID 0)
-- Dependencies: 222
-- Name: courses_course_id_seq; Type: SEQUENCE OWNED BY; Schema: university; Owner: postgres
--

ALTER SEQUENCE university.courses_course_id_seq OWNED BY university.courses.course_id;


--
-- TOC entry 225 (class 1259 OID 16452)
-- Name: enrollments; Type: TABLE; Schema: university; Owner: postgres
--

CREATE TABLE university.enrollments (
    enrollment_id bigint NOT NULL,
    student_id bigint NOT NULL,
    course_id bigint NOT NULL,
    enroll_date timestamp without time zone
);


ALTER TABLE university.enrollments OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16451)
-- Name: enrollments_enrollment_id_seq; Type: SEQUENCE; Schema: university; Owner: postgres
--

CREATE SEQUENCE university.enrollments_enrollment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE university.enrollments_enrollment_id_seq OWNER TO postgres;

--
-- TOC entry 5040 (class 0 OID 0)
-- Dependencies: 224
-- Name: enrollments_enrollment_id_seq; Type: SEQUENCE OWNED BY; Schema: university; Owner: postgres
--

ALTER SEQUENCE university.enrollments_enrollment_id_seq OWNED BY university.enrollments.enrollment_id;


--
-- TOC entry 221 (class 1259 OID 16410)
-- Name: students; Type: TABLE; Schema: university; Owner: postgres
--

CREATE TABLE university.students (
    student_id bigint NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    birth_date date,
    email character varying(255) NOT NULL
);


ALTER TABLE university.students OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16409)
-- Name: students_student_id_seq; Type: SEQUENCE; Schema: university; Owner: postgres
--

CREATE SEQUENCE university.students_student_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE university.students_student_id_seq OWNER TO postgres;

--
-- TOC entry 5041 (class 0 OID 0)
-- Dependencies: 220
-- Name: students_student_id_seq; Type: SEQUENCE OWNED BY; Schema: university; Owner: postgres
--

ALTER SEQUENCE university.students_student_id_seq OWNED BY university.students.student_id;


--
-- TOC entry 4868 (class 2604 OID 16426)
-- Name: courses course_id; Type: DEFAULT; Schema: university; Owner: postgres
--

ALTER TABLE ONLY university.courses ALTER COLUMN course_id SET DEFAULT nextval('university.courses_course_id_seq'::regclass);


--
-- TOC entry 4869 (class 2604 OID 16455)
-- Name: enrollments enrollment_id; Type: DEFAULT; Schema: university; Owner: postgres
--

ALTER TABLE ONLY university.enrollments ALTER COLUMN enrollment_id SET DEFAULT nextval('university.enrollments_enrollment_id_seq'::regclass);


--
-- TOC entry 4867 (class 2604 OID 16413)
-- Name: students student_id; Type: DEFAULT; Schema: university; Owner: postgres
--

ALTER TABLE ONLY university.students ALTER COLUMN student_id SET DEFAULT nextval('university.students_student_id_seq'::regclass);


--
-- TOC entry 5030 (class 0 OID 16423)
-- Dependencies: 223
-- Data for Name: courses; Type: TABLE DATA; Schema: university; Owner: postgres
--

COPY university.courses (course_id, course_name, credits) FROM stdin;
\.


--
-- TOC entry 5032 (class 0 OID 16452)
-- Dependencies: 225
-- Data for Name: enrollments; Type: TABLE DATA; Schema: university; Owner: postgres
--

COPY university.enrollments (enrollment_id, student_id, course_id, enroll_date) FROM stdin;
\.


--
-- TOC entry 5028 (class 0 OID 16410)
-- Dependencies: 221
-- Data for Name: students; Type: TABLE DATA; Schema: university; Owner: postgres
--

COPY university.students (student_id, first_name, last_name, birth_date, email) FROM stdin;
\.


--
-- TOC entry 5042 (class 0 OID 0)
-- Dependencies: 222
-- Name: courses_course_id_seq; Type: SEQUENCE SET; Schema: university; Owner: postgres
--

SELECT pg_catalog.setval('university.courses_course_id_seq', 1, false);


--
-- TOC entry 5043 (class 0 OID 0)
-- Dependencies: 224
-- Name: enrollments_enrollment_id_seq; Type: SEQUENCE SET; Schema: university; Owner: postgres
--

SELECT pg_catalog.setval('university.enrollments_enrollment_id_seq', 1, false);


--
-- TOC entry 5044 (class 0 OID 0)
-- Dependencies: 220
-- Name: students_student_id_seq; Type: SEQUENCE SET; Schema: university; Owner: postgres
--

SELECT pg_catalog.setval('university.students_student_id_seq', 1, false);


--
-- TOC entry 4875 (class 2606 OID 16430)
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: university; Owner: postgres
--

ALTER TABLE ONLY university.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (course_id);


--
-- TOC entry 4877 (class 2606 OID 16460)
-- Name: enrollments enrollments_pkey; Type: CONSTRAINT; Schema: university; Owner: postgres
--

ALTER TABLE ONLY university.enrollments
    ADD CONSTRAINT enrollments_pkey PRIMARY KEY (enrollment_id);


--
-- TOC entry 4871 (class 2606 OID 16421)
-- Name: students students_email_key; Type: CONSTRAINT; Schema: university; Owner: postgres
--

ALTER TABLE ONLY university.students
    ADD CONSTRAINT students_email_key UNIQUE (email);


--
-- TOC entry 4873 (class 2606 OID 16419)
-- Name: students students_pkey; Type: CONSTRAINT; Schema: university; Owner: postgres
--

ALTER TABLE ONLY university.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);


--
-- TOC entry 4878 (class 2606 OID 16466)
-- Name: enrollments enrollments_course_id_fkey; Type: FK CONSTRAINT; Schema: university; Owner: postgres
--

ALTER TABLE ONLY university.enrollments
    ADD CONSTRAINT enrollments_course_id_fkey FOREIGN KEY (course_id) REFERENCES university.courses(course_id);


--
-- TOC entry 4879 (class 2606 OID 16461)
-- Name: enrollments enrollments_student_id_fkey; Type: FK CONSTRAINT; Schema: university; Owner: postgres
--

ALTER TABLE ONLY university.enrollments
    ADD CONSTRAINT enrollments_student_id_fkey FOREIGN KEY (student_id) REFERENCES university.students(student_id);


-- Completed on 2025-10-31 13:19:31

--
-- PostgreSQL database dump complete
--

\unrestrict IXpcDZUcf0fe3pf9kYCWppd6w6jptOgS5ShciOk4wgZjA4jekqVPfNsU7HD9a6Q

