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
    description text,
    has_life boolean,
    age_of_galaxy integer,
    distance_from_earth numeric,
    stars integer,
    is_spherical boolean,
    name character varying(80) NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: materials; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.materials (
    materials_id integer NOT NULL,
    name character varying(80) NOT NULL,
    gold boolean,
    plants text,
    water_liters numeric,
    air_parts integer
);


ALTER TABLE public.materials OWNER TO freecodecamp;

--
-- Name: materials_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.materials_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.materials_id_seq OWNER TO freecodecamp;

--
-- Name: materials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.materials_id_seq OWNED BY public.materials.materials_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(80) NOT NULL,
    size integer,
    distance_from_planet numeric,
    discription text,
    has_life boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    star_id integer,
    name character varying(80) NOT NULL,
    size integer,
    number_of_moons numeric,
    discription text,
    has_water boolean,
    has_life boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    size integer,
    temp integer,
    planets_around numeric,
    color text,
    close_to_end_of_life boolean,
    galaxy_id integer,
    name character varying(80) NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: stars_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.stars_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stars_id_seq OWNER TO freecodecamp;

--
-- Name: stars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.stars_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: materials materials_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.materials ALTER COLUMN materials_id SET DEFAULT nextval('public.materials_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.stars_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'greate galaxy', true, 345, 1000, 9444, false, 'andromeda galaxy');
INSERT INTO public.galaxy VALUES (2, 'greate galaxy', true, 345, 1000, 9444, false, 'canis galaxy');
INSERT INTO public.galaxy VALUES (3, 'greate galaxy', true, 345, 1000, 9444, false, 'cygnus galaxy');
INSERT INTO public.galaxy VALUES (4, 'another galaxy', true, 234, 399, 3929, true, 'maffei galaxy');
INSERT INTO public.galaxy VALUES (5, 'another galaxy', false, 394, 1200, 3282, true, 'megallanic galaxy');
INSERT INTO public.galaxy VALUES (6, 'another galaxy', false, 10003, 2938, 83883, false, 'virgo galaxy');


--
-- Data for Name: materials; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.materials VALUES (1, 'gh-w', true, 'green plants', 3000000, 9444);
INSERT INTO public.materials VALUES (2, 'dk', false, 'red plants', 4000, 234);
INSERT INTO public.materials VALUES (3, 'vn', true, 'blue plants', 9994, 588);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Ra', 32, 43, 'protects from asteroids', false, 4);
INSERT INTO public.moon VALUES (2, 'Nd-305', 23, 44, 'one of the moon in universe has life', true, 4);
INSERT INTO public.moon VALUES (4, 'Hnsa', 32, 43, 'protects from asteroids', false, 1);
INSERT INTO public.moon VALUES (5, 'la-93', 23, 44, 'just moon', false, 2);
INSERT INTO public.moon VALUES (6, 'nb-44', 12, 99, 'just moon', false, 1);
INSERT INTO public.moon VALUES (7, 'mz-33', 44, 39, 'red moon', false, 3);
INSERT INTO public.moon VALUES (8, 'mk', 43, 67, 'blue moon', false, 9);
INSERT INTO public.moon VALUES (9, 'psd', 32, 43, 'protects from asteroids', false, 4);
INSERT INTO public.moon VALUES (10, 'kmv-33', 23, 44, 'just moon', false, 8);
INSERT INTO public.moon VALUES (11, 'so-re4', 12, 99, 'just moon', false, 8);
INSERT INTO public.moon VALUES (12, 'dso-0', 44, 39, 'red moon', false, 6);
INSERT INTO public.moon VALUES (13, 'ls-21', 43, 67, 'blue moon', false, 10);
INSERT INTO public.moon VALUES (14, 'nv-bc', 40, 43, 'created from asteroids', false, 11);
INSERT INTO public.moon VALUES (15, 'sd-33', 23, 44, 'just moon', false, 12);
INSERT INTO public.moon VALUES (16, 'sdf-4', 15, 68, 'just moon', false, 10);
INSERT INTO public.moon VALUES (17, 'iod-0', 123, 39, 'red moon', false, 10);
INSERT INTO public.moon VALUES (18, 's-21', 43, 67, 'blue moon', false, 7);
INSERT INTO public.moon VALUES (19, 'nv-003', 40, 95, 'created from wapor', false, 3);
INSERT INTO public.moon VALUES (20, 'klp', 95, 44, 'just moon', true, 12);
INSERT INTO public.moon VALUES (21, 'sdf-5', 15, 68, 'just moon', false, 7);
INSERT INTO public.moon VALUES (22, 'iod-4', 55, 39, 'red moon', false, 7);
INSERT INTO public.moon VALUES (23, 's-dd', 43, 67, 'blue moon', false, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 3, 'Arca', 332, 3, 'greate nature', true, true);
INSERT INTO public.planet VALUES (2, 3, 'Bora', 122, 3, 'ok nature', true, true);
INSERT INTO public.planet VALUES (3, 5, 'Uni', 122, 0, 'bad nature', false, false);
INSERT INTO public.planet VALUES (4, 6, 'Ombra', 992, 0, 'drastic nature', false, false);
INSERT INTO public.planet VALUES (5, 1, 'Orbit', 84, 1, 'drastic nature', true, false);
INSERT INTO public.planet VALUES (6, 1, 'Brandis', 103, 2, 'ok nature', true, true);
INSERT INTO public.planet VALUES (7, 1, 'Emoana', 185, 1, 'ok nature', true, true);
INSERT INTO public.planet VALUES (8, 1, 'Agre', 135, 2, 'bad nature', true, true);
INSERT INTO public.planet VALUES (9, 2, 'Lerga', 230, 4, 'great nature', true, false);
INSERT INTO public.planet VALUES (10, 5, 'Breta', 40, 2, 'good nature', true, false);
INSERT INTO public.planet VALUES (11, 3, 'Photra', 90, 2, 'greate nature', true, true);
INSERT INTO public.planet VALUES (12, 3, 'Anmisr', 180, 0, 'great nature', true, true);
INSERT INTO public.planet VALUES (13, 3, 'Norta', 400, 2, 'ok nature', false, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 394, 8000, 8, 'red', false, 2, 'Eridanus');
INSERT INTO public.star VALUES (2, 94, 4000, 8, 'green', false, 5, 'Scorpius');
INSERT INTO public.star VALUES (3, 94, 4000, 8, 'blue', false, 1, 'Crux');
INSERT INTO public.star VALUES (4, 224, 10000, 19, 'blue', true, 1, 'Lyra');
INSERT INTO public.star VALUES (5, 224, 10000, 14, 'blue', true, 6, 'Grus');
INSERT INTO public.star VALUES (6, 22433, 320000, 35, 'blue', true, 4, 'Leo');


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: materials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.materials_id_seq', 3, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 23, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 13, true);


--
-- Name: stars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.stars_id_seq', 6, true);


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
-- Name: materials materials_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.materials
    ADD CONSTRAINT materials_name_key UNIQUE (name);


--
-- Name: materials materials_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.materials
    ADD CONSTRAINT materials_pkey PRIMARY KEY (materials_id);


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
-- Name: star stars_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT stars_pkey PRIMARY KEY (star_id);


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

