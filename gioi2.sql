--
-- PostgreSQL database dump
--

\restrict GrjJt9PYT2h81IRp9p8bwEZrJEdqGYVQaZ4GCvk3amTyyc0k3lDYseek1awruWi

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-10-31 16:19:27

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
-- TOC entry 5073 (class 1262 OID 16543)
-- Name: ElearningDB; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "ElearningDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Vietnamese_Vietnam.1258';


ALTER DATABASE "ElearningDB" OWNER TO postgres;

\unrestrict GrjJt9PYT2h81IRp9p8bwEZrJEdqGYVQaZ4GCvk3amTyyc0k3lDYseek1awruWi
\connect "ElearningDB"
\restrict GrjJt9PYT2h81IRp9p8bwEZrJEdqGYVQaZ4GCvk3amTyyc0k3lDYseek1awruWi

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
-- TOC entry 6 (class 2615 OID 16544)
-- Name: elearning; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA elearning;


ALTER SCHEMA elearning OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 229 (class 1259 OID 16630)
-- Name: assignments; Type: TABLE; Schema: elearning; Owner: postgres
--

CREATE TABLE elearning.assignments (
    assignment_id bigint NOT NULL,
    course_id bigint,
    title character varying(100) NOT NULL,
    due_date date NOT NULL
);


ALTER TABLE elearning.assignments OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 16629)
-- Name: assignments_assignment_id_seq; Type: SEQUENCE; Schema: elearning; Owner: postgres
--

CREATE SEQUENCE elearning.assignments_assignment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE elearning.assignments_assignment_id_seq OWNER TO postgres;

--
-- TOC entry 5074 (class 0 OID 0)
-- Dependencies: 228
-- Name: assignments_assignment_id_seq; Type: SEQUENCE OWNED BY; Schema: elearning; Owner: postgres
--

ALTER SEQUENCE elearning.assignments_assignment_id_seq OWNED BY elearning.assignments.assignment_id;


--
-- TOC entry 225 (class 1259 OID 16572)
-- Name: courses; Type: TABLE; Schema: elearning; Owner: postgres
--

CREATE TABLE elearning.courses (
    course_id bigint NOT NULL,
    course_name character varying(100) NOT NULL,
    instructor_id bigint NOT NULL
);


ALTER TABLE elearning.courses OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16571)
-- Name: courses_course_id_seq; Type: SEQUENCE; Schema: elearning; Owner: postgres
--

CREATE SEQUENCE elearning.courses_course_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE elearning.courses_course_id_seq OWNER TO postgres;

--
-- TOC entry 5075 (class 0 OID 0)
-- Dependencies: 224
-- Name: courses_course_id_seq; Type: SEQUENCE OWNED BY; Schema: elearning; Owner: postgres
--

ALTER SEQUENCE elearning.courses_course_id_seq OWNED BY elearning.courses.course_id;


--
-- TOC entry 227 (class 1259 OID 16609)
-- Name: enrollments; Type: TABLE; Schema: elearning; Owner: postgres
--

CREATE TABLE elearning.enrollments (
    enrollment_id bigint NOT NULL,
    student_id bigint NOT NULL,
    course_id bigint NOT NULL,
    enroll_date timestamp without time zone DEFAULT now()
);


ALTER TABLE elearning.enrollments OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16608)
-- Name: enrollments_enrollment_id_seq; Type: SEQUENCE; Schema: elearning; Owner: postgres
--

CREATE SEQUENCE elearning.enrollments_enrollment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE elearning.enrollments_enrollment_id_seq OWNER TO postgres;

--
-- TOC entry 5076 (class 0 OID 0)
-- Dependencies: 226
-- Name: enrollments_enrollment_id_seq; Type: SEQUENCE OWNED BY; Schema: elearning; Owner: postgres
--

ALTER SEQUENCE elearning.enrollments_enrollment_id_seq OWNED BY elearning.enrollments.enrollment_id;


--
-- TOC entry 223 (class 1259 OID 16559)
-- Name: instructor; Type: TABLE; Schema: elearning; Owner: postgres
--

CREATE TABLE elearning.instructor (
    instructor_id bigint NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    email character varying(255) NOT NULL
);


ALTER TABLE elearning.instructor OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16558)
-- Name: instructor_instructor_id_seq; Type: SEQUENCE; Schema: elearning; Owner: postgres
--

CREATE SEQUENCE elearning.instructor_instructor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE elearning.instructor_instructor_id_seq OWNER TO postgres;

--
-- TOC entry 5077 (class 0 OID 0)
-- Dependencies: 222
-- Name: instructor_instructor_id_seq; Type: SEQUENCE OWNED BY; Schema: elearning; Owner: postgres
--

ALTER SEQUENCE elearning.instructor_instructor_id_seq OWNED BY elearning.instructor.instructor_id;


--
-- TOC entry 221 (class 1259 OID 16546)
-- Name: students; Type: TABLE; Schema: elearning; Owner: postgres
--

CREATE TABLE elearning.students (
    student_id bigint NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    email character varying(255) NOT NULL
);


ALTER TABLE elearning.students OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16545)
-- Name: students_student_id_seq; Type: SEQUENCE; Schema: elearning; Owner: postgres
--

CREATE SEQUENCE elearning.students_student_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE elearning.students_student_id_seq OWNER TO postgres;

--
-- TOC entry 5078 (class 0 OID 0)
-- Dependencies: 220
-- Name: students_student_id_seq; Type: SEQUENCE OWNED BY; Schema: elearning; Owner: postgres
--

ALTER SEQUENCE elearning.students_student_id_seq OWNED BY elearning.students.student_id;


--
-- TOC entry 231 (class 1259 OID 16640)
-- Name: submissions; Type: TABLE; Schema: elearning; Owner: postgres
--

CREATE TABLE elearning.submissions (
    submission_id bigint NOT NULL,
    assignment_id bigint,
    student_id bigint,
    submission_date date NOT NULL,
    grade numeric(5,2),
    CONSTRAINT submissions_grade_check CHECK (((grade >= (0)::numeric) AND (grade <= (100)::numeric)))
);


ALTER TABLE elearning.submissions OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 16639)
-- Name: submissions_submission_id_seq; Type: SEQUENCE; Schema: elearning; Owner: postgres
--

CREATE SEQUENCE elearning.submissions_submission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE elearning.submissions_submission_id_seq OWNER TO postgres;

--
-- TOC entry 5079 (class 0 OID 0)
-- Dependencies: 230
-- Name: submissions_submission_id_seq; Type: SEQUENCE OWNED BY; Schema: elearning; Owner: postgres
--

ALTER SEQUENCE elearning.submissions_submission_id_seq OWNED BY elearning.submissions.submission_id;


--
-- TOC entry 4887 (class 2604 OID 16633)
-- Name: assignments assignment_id; Type: DEFAULT; Schema: elearning; Owner: postgres
--

ALTER TABLE ONLY elearning.assignments ALTER COLUMN assignment_id SET DEFAULT nextval('elearning.assignments_assignment_id_seq'::regclass);


--
-- TOC entry 4884 (class 2604 OID 16575)
-- Name: courses course_id; Type: DEFAULT; Schema: elearning; Owner: postgres
--

ALTER TABLE ONLY elearning.courses ALTER COLUMN course_id SET DEFAULT nextval('elearning.courses_course_id_seq'::regclass);


--
-- TOC entry 4885 (class 2604 OID 16612)
-- Name: enrollments enrollment_id; Type: DEFAULT; Schema: elearning; Owner: postgres
--

ALTER TABLE ONLY elearning.enrollments ALTER COLUMN enrollment_id SET DEFAULT nextval('elearning.enrollments_enrollment_id_seq'::regclass);


--
-- TOC entry 4883 (class 2604 OID 16562)
-- Name: instructor instructor_id; Type: DEFAULT; Schema: elearning; Owner: postgres
--

ALTER TABLE ONLY elearning.instructor ALTER COLUMN instructor_id SET DEFAULT nextval('elearning.instructor_instructor_id_seq'::regclass);


--
-- TOC entry 4882 (class 2604 OID 16549)
-- Name: students student_id; Type: DEFAULT; Schema: elearning; Owner: postgres
--

ALTER TABLE ONLY elearning.students ALTER COLUMN student_id SET DEFAULT nextval('elearning.students_student_id_seq'::regclass);


--
-- TOC entry 4888 (class 2604 OID 16643)
-- Name: submissions submission_id; Type: DEFAULT; Schema: elearning; Owner: postgres
--

ALTER TABLE ONLY elearning.submissions ALTER COLUMN submission_id SET DEFAULT nextval('elearning.submissions_submission_id_seq'::regclass);


--
-- TOC entry 5065 (class 0 OID 16630)
-- Dependencies: 229
-- Data for Name: assignments; Type: TABLE DATA; Schema: elearning; Owner: postgres
--

COPY elearning.assignments (assignment_id, course_id, title, due_date) FROM stdin;
\.


--
-- TOC entry 5061 (class 0 OID 16572)
-- Dependencies: 225
-- Data for Name: courses; Type: TABLE DATA; Schema: elearning; Owner: postgres
--

COPY elearning.courses (course_id, course_name, instructor_id) FROM stdin;
\.


--
-- TOC entry 5063 (class 0 OID 16609)
-- Dependencies: 227
-- Data for Name: enrollments; Type: TABLE DATA; Schema: elearning; Owner: postgres
--

COPY elearning.enrollments (enrollment_id, student_id, course_id, enroll_date) FROM stdin;
\.


--
-- TOC entry 5059 (class 0 OID 16559)
-- Dependencies: 223
-- Data for Name: instructor; Type: TABLE DATA; Schema: elearning; Owner: postgres
--

COPY elearning.instructor (instructor_id, first_name, last_name, email) FROM stdin;
\.


--
-- TOC entry 5057 (class 0 OID 16546)
-- Dependencies: 221
-- Data for Name: students; Type: TABLE DATA; Schema: elearning; Owner: postgres
--

COPY elearning.students (student_id, first_name, last_name, email) FROM stdin;
\.


--
-- TOC entry 5067 (class 0 OID 16640)
-- Dependencies: 231
-- Data for Name: submissions; Type: TABLE DATA; Schema: elearning; Owner: postgres
--

COPY elearning.submissions (submission_id, assignment_id, student_id, submission_date, grade) FROM stdin;
\.


--
-- TOC entry 5080 (class 0 OID 0)
-- Dependencies: 228
-- Name: assignments_assignment_id_seq; Type: SEQUENCE SET; Schema: elearning; Owner: postgres
--

SELECT pg_catalog.setval('elearning.assignments_assignment_id_seq', 1, false);


--
-- TOC entry 5081 (class 0 OID 0)
-- Dependencies: 224
-- Name: courses_course_id_seq; Type: SEQUENCE SET; Schema: elearning; Owner: postgres
--

SELECT pg_catalog.setval('elearning.courses_course_id_seq', 1, false);


--
-- TOC entry 5082 (class 0 OID 0)
-- Dependencies: 226
-- Name: enrollments_enrollment_id_seq; Type: SEQUENCE SET; Schema: elearning; Owner: postgres
--

SELECT pg_catalog.setval('elearning.enrollments_enrollment_id_seq', 1, false);


--
-- TOC entry 5083 (class 0 OID 0)
-- Dependencies: 222
-- Name: instructor_instructor_id_seq; Type: SEQUENCE SET; Schema: elearning; Owner: postgres
--

SELECT pg_catalog.setval('elearning.instructor_instructor_id_seq', 1, false);


--
-- TOC entry 5084 (class 0 OID 0)
-- Dependencies: 220
-- Name: students_student_id_seq; Type: SEQUENCE SET; Schema: elearning; Owner: postgres
--

SELECT pg_catalog.setval('elearning.students_student_id_seq', 1, false);


--
-- TOC entry 5085 (class 0 OID 0)
-- Dependencies: 230
-- Name: submissions_submission_id_seq; Type: SEQUENCE SET; Schema: elearning; Owner: postgres
--

SELECT pg_catalog.setval('elearning.submissions_submission_id_seq', 1, false);


--
-- TOC entry 4903 (class 2606 OID 16638)
-- Name: assignments assignments_pkey; Type: CONSTRAINT; Schema: elearning; Owner: postgres
--

ALTER TABLE ONLY elearning.assignments
    ADD CONSTRAINT assignments_pkey PRIMARY KEY (assignment_id);


--
-- TOC entry 4899 (class 2606 OID 16580)
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: elearning; Owner: postgres
--

ALTER TABLE ONLY elearning.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (course_id);


--
-- TOC entry 4901 (class 2606 OID 16618)
-- Name: enrollments enrollments_pkey; Type: CONSTRAINT; Schema: elearning; Owner: postgres
--

ALTER TABLE ONLY elearning.enrollments
    ADD CONSTRAINT enrollments_pkey PRIMARY KEY (enrollment_id);


--
-- TOC entry 4895 (class 2606 OID 16570)
-- Name: instructor instructor_email_key; Type: CONSTRAINT; Schema: elearning; Owner: postgres
--

ALTER TABLE ONLY elearning.instructor
    ADD CONSTRAINT instructor_email_key UNIQUE (email);


--
-- TOC entry 4897 (class 2606 OID 16568)
-- Name: instructor instructor_pkey; Type: CONSTRAINT; Schema: elearning; Owner: postgres
--

ALTER TABLE ONLY elearning.instructor
    ADD CONSTRAINT instructor_pkey PRIMARY KEY (instructor_id);


--
-- TOC entry 4891 (class 2606 OID 16557)
-- Name: students students_email_key; Type: CONSTRAINT; Schema: elearning; Owner: postgres
--

ALTER TABLE ONLY elearning.students
    ADD CONSTRAINT students_email_key UNIQUE (email);


--
-- TOC entry 4893 (class 2606 OID 16555)
-- Name: students students_pkey; Type: CONSTRAINT; Schema: elearning; Owner: postgres
--

ALTER TABLE ONLY elearning.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);


--
-- TOC entry 4905 (class 2606 OID 16648)
-- Name: submissions submissions_pkey; Type: CONSTRAINT; Schema: elearning; Owner: postgres
--

ALTER TABLE ONLY elearning.submissions
    ADD CONSTRAINT submissions_pkey PRIMARY KEY (submission_id);


--
-- TOC entry 4906 (class 2606 OID 16581)
-- Name: courses courses_instructor_id_fkey; Type: FK CONSTRAINT; Schema: elearning; Owner: postgres
--

ALTER TABLE ONLY elearning.courses
    ADD CONSTRAINT courses_instructor_id_fkey FOREIGN KEY (instructor_id) REFERENCES elearning.instructor(instructor_id);


--
-- TOC entry 4907 (class 2606 OID 16624)
-- Name: enrollments enrollments_course_id_fkey; Type: FK CONSTRAINT; Schema: elearning; Owner: postgres
--

ALTER TABLE ONLY elearning.enrollments
    ADD CONSTRAINT enrollments_course_id_fkey FOREIGN KEY (course_id) REFERENCES elearning.courses(course_id);


--
-- TOC entry 4908 (class 2606 OID 16619)
-- Name: enrollments enrollments_student_id_fkey; Type: FK CONSTRAINT; Schema: elearning; Owner: postgres
--

ALTER TABLE ONLY elearning.enrollments
    ADD CONSTRAINT enrollments_student_id_fkey FOREIGN KEY (student_id) REFERENCES elearning.students(student_id);


-- Completed on 2025-10-31 16:19:27

--
-- PostgreSQL database dump complete
--

\unrestrict GrjJt9PYT2h81IRp9p8bwEZrJEdqGYVQaZ4GCvk3amTyyc0k3lDYseek1awruWi

