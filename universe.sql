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
-- Name: commet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.commet (
    commet_id integer NOT NULL,
    star_id integer,
    name character varying(30) NOT NULL,
    year_of_discovery integer,
    radius_of_orbit numeric,
    description text,
    is_solid boolean,
    is_spheric boolean
);


ALTER TABLE public.commet OWNER TO freecodecamp;

--
-- Name: commet_commet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.commet_commet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.commet_commet_id_seq OWNER TO freecodecamp;

--
-- Name: commet_commet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.commet_commet_id_seq OWNED BY public.commet.commet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_million_of_years integer,
    distance_from_earth numeric,
    description text,
    is_spheric boolean,
    has_life boolean
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
    planet_id integer,
    name character varying(30) NOT NULL,
    year_of_discovery integer,
    distance_from_planet numeric,
    description text,
    is_solid boolean,
    is_spheric boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moons_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moons_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moons_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moons_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moons_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    star_id integer,
    name character varying(30) NOT NULL,
    year_of_discovery integer,
    distance_from_earth numeric,
    description text,
    is_solid boolean,
    has_moons boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planets_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planets_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planets_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planets_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planets_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer,
    name character varying(30) NOT NULL,
    year_of_discovery integer,
    distance_from_earth numeric,
    description text,
    is_spheric boolean,
    hass_planets boolean
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
-- Name: commet commet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.commet ALTER COLUMN commet_id SET DEFAULT nextval('public.commet_commet_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moons_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planets_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: commet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.commet VALUES (1, 1, 'Halley', 1758, 75.0, 'El cometa mas famoso,TRUE,FALSE),
', true, false);
INSERT INTO public.commet VALUES (2, 1, 'Hale-Bopp', 1995, 2533.0, 'Se puede ver por 18 meses', true, false);
INSERT INTO public.commet VALUES (3, 1, 'Hyakutake', 1996, 100000.0, 'Tiene el tiempo muy largo', true, false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Via Lactea', 13, 0, 'La Via Lactea es la galaxia donde habitamos', false, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10, 2537.0, 'El objeto visible a simple vista mas lejano de la tierra', false, false);
INSERT INTO public.galaxy VALUES (3, 'Triangulo', 0, 2723.0, 'Una galaxia que esta en la Constelación del Triangulo', false, false);
INSERT INTO public.galaxy VALUES (4, 'Remolino', 400, 23.16, 'Galaxia que se encuentra en la constelación del Can', false, false);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 13, 29.35, 'Galaxia encontrada en la constelacion de Virgo', false, false);
INSERT INTO public.galaxy VALUES (6, 'Girasol', 13, 400.0, 'Galaxia que se encuentra en la Constelacion Cane Vetaci', false, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'Luna', NULL, 384.0, 'Nuestra luna', true, true);
INSERT INTO public.moon VALUES (2, 5, 'Io', 1610, 421.8, 'Una de las Lunas descubiertas por Galileo', true, true);
INSERT INTO public.moon VALUES (3, 5, 'Europa', 1610, 671.1, 'Otra luna descubierta por Galileo', true, true);
INSERT INTO public.moon VALUES (4, 5, 'Ganimedes', 1610, 1070.4, 'Otra luna Galileana', true, true);
INSERT INTO public.moon VALUES (5, 5, 'Calisto', 1610, 1882.6, 'Ultima luna Galileana', true, true);
INSERT INTO public.moon VALUES (6, 5, 'Temisto', 2000, 7398.8, 'Descubierta por Sheppar', true, false);
INSERT INTO public.moon VALUES (7, 6, 'Mimas', 1789, 396.0, 'Primera luna de Saturno', true, false);
INSERT INTO public.moon VALUES (8, 6, 'Enceladus', 1789, 237.9, 'Luna de Saturno', true, true);
INSERT INTO public.moon VALUES (9, 6, 'Tethys', 1789, 294.6, '3era Luna de Saturno', true, true);
INSERT INTO public.moon VALUES (10, 6, 'Dione', 1789, 377.3, '4ta Luna de Saturno', true, true);
INSERT INTO public.moon VALUES (11, 6, 'Rhea', 1672, 527.108, 'Luna descubierta por Domenico', true, true);
INSERT INTO public.moon VALUES (12, 6, 'Titan', 1655, NULL, 'Luna parecida a la Tierra', true, true);
INSERT INTO public.moon VALUES (13, 6, 'Iapetus', 1671, NULL, 'Descubierta por Domenico', true, true);
INSERT INTO public.moon VALUES (14, 7, 'Perdita', 1999, 76.4, 'Pequeña luna', true, false);
INSERT INTO public.moon VALUES (15, 7, 'Oberon', 1787, 583.5, 'El satelite mas grande de Urano', true, true);
INSERT INTO public.moon VALUES (16, 7, 'Titania', 1787, 435.9, 'Nombre de la reina de las Hadas', true, true);
INSERT INTO public.moon VALUES (17, 8, 'Proteo', 1989, 117.6, 'Descubierta por Voyager 2', true, false);
INSERT INTO public.moon VALUES (18, 8, 'Triton', 1846, 345.7, 'La luna mas grande de Neptuno', true, true);
INSERT INTO public.moon VALUES (19, 8, 'Nereida', 15531, 949, NULL, true, false);
INSERT INTO public.moon VALUES (20, 8, 'Sao', 2002, 22452.0, 'Faltaba uno', true, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'Tierra', NULL, NULL, 'El planeta donde vivimos', true, true);
INSERT INTO public.planet VALUES (2, 1, 'Mercurio', NULL, 0.39, 'El planeta donde vivimos', true, false);
INSERT INTO public.planet VALUES (3, 1, 'Venus', NULL, 0.72, 'Destello de la mañana', false, false);
INSERT INTO public.planet VALUES (4, 1, 'Marte', NULL, 1.52, 'Planeta rojo', true, false);
INSERT INTO public.planet VALUES (5, 1, 'Jupiter', NULL, 5.20, 'El planeta mas grande del sistema solar', false, true);
INSERT INTO public.planet VALUES (6, 1, 'Saturno', 1610, 9.54, 'Planeta con anillos, descubierto por Galileo', false, false);
INSERT INTO public.planet VALUES (7, 1, 'Urano', 1781, 19.19, 'Planeta lejano, azul y helado', false, true);
INSERT INTO public.planet VALUES (8, 1, 'Neptuno', 1846, 30.06, 'Primer planeta descubierto con cálculos', false, false);
INSERT INTO public.planet VALUES (9, 2, 'Proxima b', 2016, 4.23, 'Exoplaneta mas cercano a la tierra', true, false);
INSERT INTO public.planet VALUES (10, 2, 'Proxima c', 2018, 4.23, 'Segundo exoplaneta mas cercano', true, false);
INSERT INTO public.planet VALUES (11, 5, 'AEgir', 2000, 10.47, 'Exoplaneta de la masa de Jupiter', false, false);
INSERT INTO public.planet VALUES (12, 7, 'Kepler-1649c', 2020, 300, 'El planeta mas parecido a la tierra', true, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'Sol', 0, 149.6, 'El centro de nuestro sistema solar', true, true);
INSERT INTO public.star VALUES (2, 1, 'Proxima Centauri', 1915, 4246.0, 'La estrella mas cercana a nuestro Sol', true, true);
INSERT INTO public.star VALUES (3, 1, 'Sirius', 0, 8611.0, 'La estrella mas brillante de nuestro cielo', true, false);
INSERT INTO public.star VALUES (4, 1, 'Estrella de Barnard', 1916, 5.9, 'Es la estrella que tiene mayor movimiento aparente desde la Tierra', true, true);
INSERT INTO public.star VALUES (5, 1, 'Ran', 0, 10.47, 'La cuarta estrella mas visible del sistema solar', true, true);
INSERT INTO public.star VALUES (6, 2, 'Alpheratz', 0, 97.0, 'La estrella mas brillante de la constelación de Andromeda', true, false);
INSERT INTO public.star VALUES (7, 1, 'Kepler-1649', 2020, 300, 'El ceEstrella que contiene el planeta mas parecido a la tierra', true, true);


--
-- Name: commet_commet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.commet_commet_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moons_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moons_moon_id_seq', 20, true);


--
-- Name: planets_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planets_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: commet commet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.commet
    ADD CONSTRAINT commet_name_key UNIQUE (name);


--
-- Name: commet commet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.commet
    ADD CONSTRAINT commet_pkey PRIMARY KEY (commet_id);


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
-- Name: moon moons_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moons_name_key UNIQUE (name);


--
-- Name: moon moons_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moons_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planets_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planets_name_key UNIQUE (name);


--
-- Name: planet planets_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planets_pkey PRIMARY KEY (planet_id);


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
-- Name: planet planets_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planets_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_galaxy_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey1 FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

