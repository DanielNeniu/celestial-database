--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(255),
    galaxy_id integer NOT NULL,
    orbit_period numeric,
    perihelion_distance numeric,
    mass numeric,
    diameter numeric,
    composition character varying(255),
    tail_length numeric,
    discovered_by character varying(255),
    discovery_year integer
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years numeric NOT NULL,
    constelation character varying(30) NOT NULL,
    distance_from_earth numeric
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    planet_id integer NOT NULL,
    diameter numeric,
    mass numeric,
    distance_from_planet numeric,
    composition text,
    atmosphere boolean,
    has_rings boolean
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
    name character varying(255) NOT NULL,
    star_id integer NOT NULL,
    galaxy_id integer,
    type character varying(255) NOT NULL,
    mass numeric,
    radius numeric,
    moons_count integer,
    life boolean
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
    name character varying(80) NOT NULL,
    galaxy_id integer NOT NULL,
    type character varying(80) NOT NULL,
    mass numeric,
    radius numeric,
    age_in_billions integer
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
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


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
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'Andromeda Comet A', 1, 76.0, 0.6, 0.0000001, 5.5, 'icy', 50000, 'Edwin Andromeda', 1950);
INSERT INTO public.comet VALUES (2, 'Andromeda Comet B', 1, 120.0, 1.1, 0.00000015, 4.8, 'dusty', 60000, 'Hubble Mission', 2001);
INSERT INTO public.comet VALUES (3, 'Andromeda Comet C', 1, 50.5, 0.9, 0.00000009, 3.3, 'mixed', 45000, 'Andromeda Skywatch', 1985);
INSERT INTO public.comet VALUES (4, 'Antennae Comet Alpha', 2, 200.0, 2.0, 0.0000002, 6.0, 'icy', 80000, 'Antennae Research', 1975);
INSERT INTO public.comet VALUES (5, 'Antennae Comet Beta', 2, 300.5, 3.5, 0.0000003, 7.1, 'dusty', 100000, 'Hubble Spacecraft', 2010);
INSERT INTO public.comet VALUES (6, 'Antennae Comet Gamma', 2, 150.2, 1.8, 0.00000018, 5.0, 'mixed', 70000, 'Corvus Observatory', 1995);
INSERT INTO public.comet VALUES (7, 'Black Eye Comet X', 3, 250.0, 2.5, 0.00000025, 6.5, 'icy', 90000, 'Coma Berenices Team', 1980);
INSERT INTO public.comet VALUES (8, 'Black Eye Comet Y', 3, 180.0, 1.5, 0.0000002, 4.7, 'dusty', 75000, 'Black Eye Survey', 1998);
INSERT INTO public.comet VALUES (9, 'Black Eye Comet Z', 3, 220.5, 3.0, 0.00000028, 8.2, 'mixed', 85000, 'Coma Berenices Lab', 2005);
INSERT INTO public.comet VALUES (10, 'Butterfly Comet I', 4, 400.0, 5.5, 0.00000035, 9.0, 'icy', 120000, 'Virgo Consortium', 1970);
INSERT INTO public.comet VALUES (11, 'Butterfly Comet II', 4, 350.2, 4.8, 0.0000003, 7.4, 'dusty', 105000, 'Virgo Space Agency', 1990);
INSERT INTO public.comet VALUES (12, 'Butterfly Comet III', 4, 500.1, 6.2, 0.00000045, 10.0, 'mixed', 130000, 'Virgo Deep Field', 2000);
INSERT INTO public.comet VALUES (13, 'Cartwheel Comet 1', 5, 320.5, 2.8, 0.00000025, 6.2, 'icy', 92000, 'Sculptor Sky Survey', 1985);
INSERT INTO public.comet VALUES (14, 'Cartwheel Comet 2', 5, 420.3, 3.6, 0.00000035, 8.1, 'dusty', 110000, 'Cartwheel Observatory', 1995);
INSERT INTO public.comet VALUES (15, 'Cartwheel Comet 3', 5, 260.0, 1.9, 0.00000022, 4.6, 'mixed', 78000, 'Sculptor Galactic Mission', 2008);
INSERT INTO public.comet VALUES (16, 'Centaurus Comet A', 6, 540.0, 4.5, 0.0000004, 9.5, 'icy', 140000, 'Centaurus Deep Sky', 1972);
INSERT INTO public.comet VALUES (17, 'Centaurus Comet B', 6, 300.7, 2.7, 0.00000028, 7.8, 'dusty', 105000, 'Centaurus Mission', 2005);
INSERT INTO public.comet VALUES (18, 'Centaurus Comet C', 6, 420.2, 5.1, 0.0000005, 11.0, 'mixed', 150000, 'Centaurus A Team', 1999);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 10.000, 'Andromeda', NULL);
INSERT INTO public.galaxy VALUES (2, 'Antennae Galaxy', 1.200, 'Corvus', NULL);
INSERT INTO public.galaxy VALUES (3, 'Black Eye Galaxy', 13.280, 'Coma Berenices', NULL);
INSERT INTO public.galaxy VALUES (4, 'Butterfly Galaxies', 12.000, 'Virgo', NULL);
INSERT INTO public.galaxy VALUES (5, 'Cartwheel Galaxy', 15.000, 'Sculptor', NULL);
INSERT INTO public.galaxy VALUES (6, 'Centaurus A (NGC 5128)', 13.700, 'Centaurus', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Andromeda I-a', 1, 0.5, 0.0001, 384000, 'rocky', false, false);
INSERT INTO public.moon VALUES (2, 'Andromeda I-b', 1, 0.3, 0.00005, 450000, 'icy', false, false);
INSERT INTO public.moon VALUES (3, 'Andromeda II-a', 2, 0.2, 0.00002, 300000, 'rocky', true, false);
INSERT INTO public.moon VALUES (4, 'Andromeda III-a', 3, 0.4, 0.00008, 600000, 'icy', false, false);
INSERT INTO public.moon VALUES (5, 'Andromeda V-a', 5, 0.15, 0.00001, 350000, 'metallic', false, false);
INSERT INTO public.moon VALUES (6, 'Antennae I-a', 6, 0.7, 0.0002, 500000, 'rocky', false, true);
INSERT INTO public.moon VALUES (7, 'Antennae II-a', 7, 0.3, 0.00003, 450000, 'icy', true, false);
INSERT INTO public.moon VALUES (8, 'Antennae III-a', 8, 0.35, 0.00004, 550000, 'rocky', false, false);
INSERT INTO public.moon VALUES (9, 'Antennae IV-a', 9, 0.2, 0.00001, 400000, 'rocky', true, false);
INSERT INTO public.moon VALUES (10, 'Antennae V-a', 10, 0.5, 0.00008, 750000, 'icy', false, false);
INSERT INTO public.moon VALUES (11, 'Black Eye I-a', 11, 0.25, 0.00003, 300000, 'rocky', true, false);
INSERT INTO public.moon VALUES (12, 'Black Eye II-a', 12, 0.6, 0.0002, 700000, 'icy', false, false);
INSERT INTO public.moon VALUES (13, 'Black Eye III-a', 13, 0.4, 0.00005, 480000, 'rocky', false, true);
INSERT INTO public.moon VALUES (14, 'Black Eye IV-a', 14, 0.3, 0.00004, 400000, 'rocky', true, false);
INSERT INTO public.moon VALUES (15, 'Black Eye V-a', 15, 0.6, 0.0001, 650000, 'icy', false, false);
INSERT INTO public.moon VALUES (16, 'Butterfly I-a', 16, 0.2, 0.00002, 320000, 'metallic', false, false);
INSERT INTO public.moon VALUES (17, 'Butterfly II-a', 17, 0.5, 0.00006, 560000, 'rocky', true, true);
INSERT INTO public.moon VALUES (18, 'Butterfly III-a', 18, 0.3, 0.00003, 400000, 'icy', false, false);
INSERT INTO public.moon VALUES (19, 'Butterfly IV-a', 19, 0.4, 0.00005, 590000, 'rocky', false, false);
INSERT INTO public.moon VALUES (20, 'Butterfly V-a', 20, 0.6, 0.00009, 700000, 'icy', false, true);
INSERT INTO public.moon VALUES (21, 'Cartwheel I-a', 21, 0.3, 0.00005, 420000, 'rocky', true, false);
INSERT INTO public.moon VALUES (22, 'Cartwheel II-a', 22, 0.8, 0.00025, 800000, 'icy', false, true);
INSERT INTO public.moon VALUES (23, 'Cartwheel III-a', 23, 0.4, 0.00006, 470000, 'rocky', false, false);
INSERT INTO public.moon VALUES (24, 'Cartwheel IV-a', 24, 0.25, 0.00004, 310000, 'metallic', true, false);
INSERT INTO public.moon VALUES (25, 'Cartwheel V-a', 25, 0.7, 0.0002, 750000, 'icy', false, false);
INSERT INTO public.moon VALUES (26, 'Centaurus A I-a', 26, 0.4, 0.00005, 380000, 'rocky', false, false);
INSERT INTO public.moon VALUES (27, 'Centaurus A II-a', 27, 0.6, 0.0001, 560000, 'icy', false, false);
INSERT INTO public.moon VALUES (28, 'Centaurus A III-a', 28, 0.35, 0.00005, 460000, 'rocky', true, false);
INSERT INTO public.moon VALUES (29, 'Centaurus A IV-a', 29, 0.5, 0.00008, 530000, 'metallic', false, true);
INSERT INTO public.moon VALUES (30, 'Centaurus A V-a', 30, 0.75, 0.00025, 900000, 'icy', false, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Andromeda I', 1, 1, 'Gas Giant', 0.8, 60.0, 10, false);
INSERT INTO public.planet VALUES (2, 'Andromeda II', 1, 1, 'Terrestrial', 0.2, 1.2, 0, true);
INSERT INTO public.planet VALUES (3, 'Andromeda III', 2, 1, 'Ice Giant', 1.1, 45.0, 5, false);
INSERT INTO public.planet VALUES (4, 'Andromeda IV', 3, 1, 'Terrestrial', 0.3, 1.1, 1, true);
INSERT INTO public.planet VALUES (5, 'Andromeda V', 4, 1, 'Terrestrial', 0.1, 0.8, 0, false);
INSERT INTO public.planet VALUES (6, 'Andromeda VI', 5, 1, 'Gas Giant', 1.5, 70.0, 12, false);
INSERT INTO public.planet VALUES (7, 'Antennae I', 6, 2, 'Gas Giant', 1.2, 80.0, 13, false);
INSERT INTO public.planet VALUES (8, 'Antennae II', 7, 2, 'Terrestrial', 0.4, 1.3, 2, true);
INSERT INTO public.planet VALUES (9, 'Antennae III', 8, 2, 'Ice Giant', 0.9, 30.0, 4, false);
INSERT INTO public.planet VALUES (10, 'Antennae IV', 9, 2, 'Terrestrial', 0.25, 1.1, 1, true);
INSERT INTO public.planet VALUES (11, 'Antennae V', 10, 2, 'Gas Giant', 2.0, 90.0, 15, false);
INSERT INTO public.planet VALUES (12, 'Black Eye I', 11, 3, 'Terrestrial', 0.3, 1.2, 1, true);
INSERT INTO public.planet VALUES (13, 'Black Eye II', 12, 3, 'Ice Giant', 1.0, 40.0, 3, false);
INSERT INTO public.planet VALUES (14, 'Black Eye III', 13, 3, 'Gas Giant', 1.3, 60.0, 9, false);
INSERT INTO public.planet VALUES (15, 'Black Eye IV', 14, 3, 'Terrestrial', 0.5, 1.0, 0, true);
INSERT INTO public.planet VALUES (16, 'Black Eye V', 15, 3, 'Ice Giant', 0.85, 50.0, 7, false);
INSERT INTO public.planet VALUES (17, 'Butterfly I', 16, 4, 'Terrestrial', 0.3, 1.1, 2, true);
INSERT INTO public.planet VALUES (18, 'Butterfly II', 17, 4, 'Gas Giant', 1.8, 90.0, 14, false);
INSERT INTO public.planet VALUES (19, 'Butterfly III', 18, 4, 'Ice Giant', 1.2, 50.0, 8, false);
INSERT INTO public.planet VALUES (20, 'Butterfly IV', 19, 4, 'Terrestrial', 0.45, 1.3, 3, true);
INSERT INTO public.planet VALUES (21, 'Butterfly V', 20, 4, 'Gas Giant', 2.2, 100.0, 17, false);
INSERT INTO public.planet VALUES (22, 'Cartwheel I', 21, 5, 'Gas Giant', 1.1, 70.0, 10, false);
INSERT INTO public.planet VALUES (23, 'Cartwheel II', 22, 5, 'Terrestrial', 0.35, 1.5, 1, true);
INSERT INTO public.planet VALUES (24, 'Cartwheel III', 23, 5, 'Ice Giant', 0.95, 40.0, 6, false);
INSERT INTO public.planet VALUES (25, 'Cartwheel IV', 24, 5, 'Terrestrial', 0.2, 1.0, 0, true);
INSERT INTO public.planet VALUES (26, 'Cartwheel V', 25, 5, 'Gas Giant', 1.7, 85.0, 12, false);
INSERT INTO public.planet VALUES (27, 'Centaurus A I', 26, 6, 'Neutron Planet', 0.5, 2.0, 0, false);
INSERT INTO public.planet VALUES (28, 'Centaurus A II', 27, 6, 'Terrestrial', 0.25, 1.1, 1, true);
INSERT INTO public.planet VALUES (29, 'Centaurus A III', 28, 6, 'Ice Giant', 0.9, 45.0, 5, false);
INSERT INTO public.planet VALUES (30, 'Centaurus A IV', 29, 6, 'Gas Giant', 1.8, 75.0, 10, false);
INSERT INTO public.planet VALUES (31, 'Centaurus A V', 30, 6, 'Terrestrial', 0.2, 1.0, 0, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpha Andromedae', 1, 'Blue Giant', 6.5, 5.6, 2);
INSERT INTO public.star VALUES (2, 'Beta Andromedae', 1, 'Red Giant', 4.8, 11.1, 4);
INSERT INTO public.star VALUES (3, 'Gamma Andromedae', 1, 'Yellow Dwarf', 1.2, 1.0, 5);
INSERT INTO public.star VALUES (4, 'Andromeda C', 1, 'White Dwarf', 0.9, 1.0, 12);
INSERT INTO public.star VALUES (5, 'Andromeda D', 1, 'Yellow Supergiant', 4.0, 15.0, 8);
INSERT INTO public.star VALUES (6, 'Beta Antennae', 2, 'Blue Giant', 6.0, 14.0, 4);
INSERT INTO public.star VALUES (7, 'Antennae Star 1', 2, 'Red Supergiant', 25.0, 100.0, 10);
INSERT INTO public.star VALUES (8, 'Antennae Star 2', 2, 'Main Sequence', 1.3, 7.0, 7);
INSERT INTO public.star VALUES (9, 'Antennae Star 3', 2, 'White Dwarf', 0.85, 1.2, 13);
INSERT INTO public.star VALUES (10, 'Antennae Star 4', 2, 'Red Giant', 2.2, 9.5, 6);
INSERT INTO public.star VALUES (11, 'Beta Black Eye', 3, 'Main Sequence', 1.2, 6.5, 6);
INSERT INTO public.star VALUES (12, 'Black Eye Alpha', 3, 'White Dwarf', 0.8, 1.0, 14);
INSERT INTO public.star VALUES (13, 'Galaxy Eye A', 3, 'Main Sequence', 1.3, 6.0, 8);
INSERT INTO public.star VALUES (14, 'Black Eye Omega', 3, 'Blue Supergiant', 8.0, 20.0, 5);
INSERT INTO public.star VALUES (15, 'Black Eye Zeta', 3, 'Red Supergiant', 18.0, 90.0, 9);
INSERT INTO public.star VALUES (16, 'Butterfly Alpha', 4, 'Yellow Supergiant', 4.5, 15.0, 9);
INSERT INTO public.star VALUES (17, 'Butterfly Beta', 4, 'Red Giant', 2.7, 10.0, 7);
INSERT INTO public.star VALUES (18, 'Butterfly Gamma', 4, 'Main Sequence', 1.0, 6.0, 7);
INSERT INTO public.star VALUES (19, 'Butterfly Delta', 4, 'Red Supergiant', 20.0, 110.0, 12);
INSERT INTO public.star VALUES (20, 'Butterfly Epsilon', 4, 'White Dwarf', 0.9, 1.1, 14);
INSERT INTO public.star VALUES (21, 'Cartwheel Alpha', 5, 'Main Sequence', 1.3, 7.0, 6);
INSERT INTO public.star VALUES (22, 'Cartwheel Beta', 5, 'Blue Giant', 7.0, 16.0, 3);
INSERT INTO public.star VALUES (23, 'Cartwheel Gamma', 5, 'Red Giant', 2.5, 9.0, 6);
INSERT INTO public.star VALUES (24, 'Cartwheel Delta', 5, 'Yellow Supergiant', 5.0, 18.0, 10);
INSERT INTO public.star VALUES (25, 'Cartwheel Epsilon', 5, 'White Dwarf', 0.85, 1.2, 13);
INSERT INTO public.star VALUES (26, 'Centaurus A Alpha', 6, 'Neutron Star', 1.4, 2.0, 11);
INSERT INTO public.star VALUES (27, 'Centaurus A Beta', 6, 'Red Supergiant', 18.0, 95.0, 8);
INSERT INTO public.star VALUES (28, 'Centaurus A Gamma', 6, 'Main Sequence', 1.2, 7.0, 5);
INSERT INTO public.star VALUES (29, 'Centaurus A Delta', 6, 'Blue Supergiant', 8.0, 22.0, 4);
INSERT INTO public.star VALUES (30, 'Centaurus A Epsilon', 6, 'White Dwarf', 0.9, 1.1, 13);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 18, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 30, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 31, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 30, true);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: comet unique_comet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT unique_comet_name UNIQUE (name);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: comet comet_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

