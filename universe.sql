--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    apparent_mag numeric NOT NULL,
    type text NOT NULL,
    size_kpc numeric NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: lifeform; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.lifeform (
    lifeform_id integer NOT NULL,
    is_extinct boolean NOT NULL,
    is_aquatic boolean NOT NULL,
    name character varying(20) NOT NULL
);


ALTER TABLE public.lifeform OWNER TO freecodecamp;

--
-- Name: lifeform_lifeform_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.lifeform_lifeform_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lifeform_lifeform_id_seq OWNER TO freecodecamp;

--
-- Name: lifeform_lifeform_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.lifeform_lifeform_id_seq OWNED BY public.lifeform.lifeform_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    mass numeric NOT NULL,
    volume numeric NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    order_from_star integer NOT NULL,
    number_moons integer NOT NULL,
    mass numeric NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    radius numeric NOT NULL,
    density numeric NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: lifeform lifeform_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lifeform ALTER COLUMN lifeform_id SET DEFAULT nextval('public.lifeform_lifeform_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 3.44, 'SA(s)b', 46.56);
INSERT INTO public.galaxy VALUES (2, 'Antennae', 11.2, 'SB(s)', 150);
INSERT INTO public.galaxy VALUES (3, 'Backward', 12.6, 'SA(r)ab', 113);
INSERT INTO public.galaxy VALUES (4, 'Black Eye', 9.36, '(R)SA(rs)ab', 16.51);
INSERT INTO public.galaxy VALUES (5, 'Messier 81', 6.94, 'SA(s)ab', 29.44);
INSERT INTO public.galaxy VALUES (6, 'Cartwheel', 15.2, 'S', 44.23);
INSERT INTO public.galaxy VALUES (7, 'Milky Way', 100, 'Sb', 26.8);


--
-- Data for Name: lifeform; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.lifeform VALUES (1, false, false, 'Human');
INSERT INTO public.lifeform VALUES (2, true, false, 'T-Rex');
INSERT INTO public.lifeform VALUES (3, false, true, 'Dolphin');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3, 0.0123, 0.074);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 1.784, 5.339);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 0.247, 0.923);
INSERT INTO public.moon VALUES (4, 'Metis', 5, 3.6, 4.27);
INSERT INTO public.moon VALUES (5, 'Adrastea', 5, 0.20, 2.34);
INSERT INTO public.moon VALUES (6, 'Amalthea', 5, 208, 24.3);
INSERT INTO public.moon VALUES (7, 'Thebe', 5, 43, 50.0);
INSERT INTO public.moon VALUES (8, 'Io', 5, 0.015, 0.023);
INSERT INTO public.moon VALUES (9, 'Europa', 5, 0.008, 0.015);
INSERT INTO public.moon VALUES (10, 'Ganymede', 5, 0.025, 0.0704);
INSERT INTO public.moon VALUES (11, 'Callisto', 5, 0.018, 0.0541);
INSERT INTO public.moon VALUES (12, 'Mimas', 6, 0.063, 0.326);
INSERT INTO public.moon VALUES (14, 'Tethys', 6, 0.103, 0.394);
INSERT INTO public.moon VALUES (15, 'Dione', 6, 0.0183, 0.51);
INSERT INTO public.moon VALUES (16, 'Rhea', 6, 0.0039, 0.635);
INSERT INTO public.moon VALUES (17, 'Titan', 6, 0.0225, 0.066);
INSERT INTO public.moon VALUES (18, 'Iapetus', 6, 0.1805, 0.573);
INSERT INTO public.moon VALUES (13, 'Enceladus', 6, 0.018, 1.609);
INSERT INTO public.moon VALUES (19, 'Cordelia', 7, 4.4, 0.389);
INSERT INTO public.moon VALUES (20, 'Ophelia', 7, 0.0053, 0.41);
INSERT INTO public.moon VALUES (21, 'Bianca', 7, 0.092, 0.71);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 0, 0.055);
INSERT INTO public.planet VALUES (2, 'Venus', 2, 0, 0.815);
INSERT INTO public.planet VALUES (3, 'Earth', 3, 1, 1.000);
INSERT INTO public.planet VALUES (4, 'Mars', 4, 2, 0.107);
INSERT INTO public.planet VALUES (5, 'Jupiter', 5, 95, 317.8);
INSERT INTO public.planet VALUES (6, 'Saturn', 6, 83, 95.159);
INSERT INTO public.planet VALUES (7, 'Uranus', 7, 27, 14.536);
INSERT INTO public.planet VALUES (8, 'Neptune', 8, 14, 17.147);
INSERT INTO public.planet VALUES (9, 'Ceres', 9, 0, 0.00016);
INSERT INTO public.planet VALUES (10, 'Orcus', 10, 1, 0.0006348);
INSERT INTO public.planet VALUES (11, 'Pluto', 11, 5, 0.00218);
INSERT INTO public.planet VALUES (12, 'Haumea', 12, 2, 0.00066);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 7, 109, 0.255);
INSERT INTO public.star VALUES (2, 'Alpha Centauri', 7, 0.859, 1.22);
INSERT INTO public.star VALUES (3, 'Barnards', 7, 0.196, 0.144);
INSERT INTO public.star VALUES (4, 'Luhman', 7, 0.85, 0.032);
INSERT INTO public.star VALUES (5, 'Wold', 7, 0.144, 0.110);
INSERT INTO public.star VALUES (6, 'Ross', 7, 0.200, 0.177);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: lifeform_lifeform_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.lifeform_lifeform_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: lifeform lifeform_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lifeform
    ADD CONSTRAINT lifeform_name_key UNIQUE (name);


--
-- Name: lifeform lifeform_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lifeform
    ADD CONSTRAINT lifeform_pkey PRIMARY KEY (lifeform_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

