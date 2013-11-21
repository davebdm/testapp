--
-- PostgreSQL database dump
--

-- Dumped from database version 9.3.1
-- Dumped by pg_dump version 9.3.1
-- Started on 2013-11-21 11:54:00 SAST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 171 (class 3079 OID 12617)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2803 (class 0 OID 0)
-- Dependencies: 171
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 170 (class 1259 OID 16397)
-- Name: test; Type: TABLE; Schema: public; Owner: bdmuser; Tablespace: 
--

CREATE TABLE test (
    firstname text,
    surname text,
    age numeric
);


ALTER TABLE public.test OWNER TO bdmuser;

--
-- TOC entry 2795 (class 0 OID 16397)
-- Dependencies: 170
-- Data for Name: test; Type: TABLE DATA; Schema: public; Owner: bdmuser
--

COPY test (firstname, surname, age) FROM stdin;
Bob	Smith	30
Sally	Sue	22
Jerry	Cool	45
\.


--
-- TOC entry 2802 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: bdmuser
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM bdmuser;
GRANT ALL ON SCHEMA public TO bdmuser;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2013-11-21 11:54:25 SAST

--
-- PostgreSQL database dump complete
--

