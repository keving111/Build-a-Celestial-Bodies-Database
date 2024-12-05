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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    planet_types character varying(30),
    galaxy_types character varying(30),
    distance_from_earth integer,
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL
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
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    planet_types character varying(30),
    galaxy_types character varying(30),
    distance_from_earth integer,
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    planet_id integer
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
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    planet_types character varying(30),
    galaxy_types character varying(30),
    distance_from_earth integer,
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    star_id integer
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
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    planet_types character varying(30),
    galaxy_types character varying(30),
    distance_from_earth integer,
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    galaxy_id integer
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
-- Name: table5; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.table5 (
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    planet_types character varying(30),
    galaxy_types character varying(30),
    distance_from_earth integer,
    name character varying(30) NOT NULL,
    table5_id integer NOT NULL
);


ALTER TABLE public.table5 OWNER TO freecodecamp;

--
-- Name: table5_table5_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.table5_table5_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.table5_table5_id_seq OWNER TO freecodecamp;

--
-- Name: table5_table5_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.table5_table5_id_seq OWNED BY public.table5.table5_id;


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
-- Name: table5 table5_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table5 ALTER COLUMN table5_id SET DEFAULT nextval('public.table5_table5_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (NULL, true, true, 13600, NULL, NULL, 0, 'Milky Way', 1);
INSERT INTO public.galaxy VALUES (NULL, NULL, true, 10000, NULL, NULL, 2500, 'Andromeda', 3);
INSERT INTO public.galaxy VALUES (NULL, NULL, false, 13200, NULL, NULL, 163, 'large Magellanic Cloud', 4);
INSERT INTO public.galaxy VALUES (NULL, NULL, false, 13200, NULL, NULL, 200, 'Small Magellanic Cloud', 5);
INSERT INTO public.galaxy VALUES (NULL, NULL, true, 13600, NULL, NULL, 23000, 'Whirlpool', 6);
INSERT INTO public.galaxy VALUES (NULL, NULL, false, 13600, NULL, NULL, 29300, 'Sombrero', 7);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (NULL, false, NULL, NULL, NULL, NULL, NULL, 'cheese', 1, 2);
INSERT INTO public.moon VALUES (NULL, false, NULL, NULL, NULL, NULL, NULL, 'hare', 2, 2);
INSERT INTO public.moon VALUES (NULL, false, NULL, NULL, NULL, NULL, NULL, 'rabbit', 3, 2);
INSERT INTO public.moon VALUES (NULL, true, NULL, NULL, NULL, NULL, NULL, 'titan', 4, 7);
INSERT INTO public.moon VALUES (NULL, true, NULL, NULL, NULL, NULL, NULL, 'keplar', 5, 7);
INSERT INTO public.moon VALUES (NULL, true, NULL, NULL, NULL, NULL, NULL, 'pascal', 6, 7);
INSERT INTO public.moon VALUES (NULL, false, NULL, NULL, NULL, NULL, NULL, 'ivy', 7, 9);
INSERT INTO public.moon VALUES (NULL, false, NULL, NULL, NULL, NULL, NULL, 'sandy', 8, 9);
INSERT INTO public.moon VALUES (NULL, false, NULL, NULL, NULL, NULL, NULL, 'madden2001', 9, 11);
INSERT INTO public.moon VALUES (NULL, false, NULL, NULL, NULL, NULL, NULL, 'madden2002', 10, 11);
INSERT INTO public.moon VALUES (NULL, false, NULL, NULL, NULL, NULL, NULL, 'madden2003', 11, 11);
INSERT INTO public.moon VALUES (NULL, false, NULL, NULL, NULL, NULL, NULL, 'madden2004', 12, 11);
INSERT INTO public.moon VALUES (NULL, false, NULL, NULL, NULL, NULL, NULL, 'madden2005', 13, 11);
INSERT INTO public.moon VALUES (NULL, true, NULL, NULL, NULL, NULL, NULL, 'dynastyWarriors3', 14, 5);
INSERT INTO public.moon VALUES (NULL, true, NULL, NULL, NULL, NULL, NULL, 'dynastyWarriors4', 15, 5);
INSERT INTO public.moon VALUES (NULL, true, NULL, NULL, NULL, NULL, NULL, 'dynastyWarriors5', 16, 5);
INSERT INTO public.moon VALUES (NULL, true, NULL, NULL, NULL, NULL, NULL, 'dynastyWarriors6', 17, 5);
INSERT INTO public.moon VALUES (NULL, true, NULL, NULL, NULL, NULL, NULL, 'dynastyWarriors7', 18, 5);
INSERT INTO public.moon VALUES (NULL, true, NULL, NULL, NULL, NULL, NULL, 'dynastyWarriors8', 19, 5);
INSERT INTO public.moon VALUES (NULL, false, NULL, NULL, NULL, NULL, NULL, 'win95', 20, 1);
INSERT INTO public.moon VALUES (NULL, false, NULL, NULL, NULL, NULL, NULL, 'win98', 21, 3);
INSERT INTO public.moon VALUES (NULL, false, NULL, NULL, NULL, NULL, NULL, 'winME', 22, 6);
INSERT INTO public.moon VALUES (NULL, false, NULL, NULL, NULL, NULL, NULL, 'winVista', 23, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (NULL, false, NULL, NULL, NULL, NULL, NULL, 'venus', 1, 1);
INSERT INTO public.planet VALUES (NULL, true, NULL, NULL, NULL, NULL, NULL, 'earth', 2, 1);
INSERT INTO public.planet VALUES (NULL, true, NULL, NULL, NULL, NULL, NULL, 'mars', 3, 1);
INSERT INTO public.planet VALUES (NULL, false, NULL, NULL, NULL, NULL, NULL, 'neptune', 4, 1);
INSERT INTO public.planet VALUES (NULL, false, NULL, NULL, NULL, NULL, NULL, 'saturn', 5, 1);
INSERT INTO public.planet VALUES (NULL, false, NULL, NULL, NULL, NULL, NULL, 'uranus', 6, 1);
INSERT INTO public.planet VALUES (NULL, false, NULL, NULL, NULL, NULL, NULL, 'jupiter', 7, 1);
INSERT INTO public.planet VALUES (NULL, false, NULL, NULL, NULL, NULL, NULL, 'mercury', 8, 1);
INSERT INTO public.planet VALUES (NULL, true, NULL, NULL, NULL, NULL, NULL, 'anime1', 9, 3);
INSERT INTO public.planet VALUES (NULL, true, NULL, NULL, NULL, NULL, NULL, 'anime2', 10, 6);
INSERT INTO public.planet VALUES (NULL, true, NULL, NULL, NULL, NULL, NULL, 'anime3', 11, 8);
INSERT INTO public.planet VALUES (NULL, true, NULL, NULL, NULL, NULL, NULL, 'anime4', 12, 7);
INSERT INTO public.planet VALUES (NULL, true, NULL, NULL, NULL, NULL, NULL, 'anime5', 13, 6);
INSERT INTO public.planet VALUES (NULL, true, NULL, NULL, NULL, NULL, NULL, 'anime6', 14, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (NULL, NULL, NULL, 10, NULL, NULL, 2500, 'V762 Cas', 1, 3);
INSERT INTO public.star VALUES (NULL, NULL, NULL, 1, NULL, NULL, 163, 'R136a1', 2, 4);
INSERT INTO public.star VALUES (NULL, NULL, NULL, 10, NULL, NULL, 200, 'HV 11417', 3, 5);
INSERT INTO public.star VALUES (NULL, NULL, NULL, NULL, NULL, NULL, 23000, 'M51-ULS-1', 4, 6);
INSERT INTO public.star VALUES (NULL, NULL, NULL, NULL, NULL, NULL, 29300, 'NGC 4559-BH1', 5, 7);
INSERT INTO public.star VALUES (NULL, NULL, NULL, 4600, NULL, NULL, 0, 'Sun', 6, 1);
INSERT INTO public.star VALUES (NULL, NULL, NULL, 25, NULL, NULL, 8600, 'Sirius', 7, 1);
INSERT INTO public.star VALUES (NULL, NULL, NULL, 6500, NULL, NULL, 4370, 'Alpha Centauri A', 8, 1);


--
-- Data for Name: table5; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.table5 VALUES (NULL, true, true, 13600, NULL, NULL, 0, 'Milky Way', 1);
INSERT INTO public.table5 VALUES (NULL, NULL, true, 10000, NULL, NULL, 2500, 'Andromeda', 2);
INSERT INTO public.table5 VALUES (NULL, NULL, false, 13200, NULL, NULL, 163, 'large Magellanic Cloud', 3);
INSERT INTO public.table5 VALUES (NULL, NULL, false, 13200, NULL, NULL, 200, 'Small Magellanic Cloud', 4);
INSERT INTO public.table5 VALUES (NULL, NULL, true, 13600, NULL, NULL, 23000, 'Whirlpool', 5);
INSERT INTO public.table5 VALUES (NULL, NULL, false, 13600, NULL, NULL, 29300, 'Sombrero', 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: table5_table5_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.table5_table5_id_seq', 6, true);


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
-- Name: table5 table5_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table5
    ADD CONSTRAINT table5_name_key UNIQUE (name);


--
-- Name: table5 table5_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table5
    ADD CONSTRAINT table5_pkey PRIMARY KEY (table5_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

