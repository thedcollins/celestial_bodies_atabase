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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying NOT NULL,
    diameter integer NOT NULL,
    distance_from_sun bigint,
    orbital_inclination numeric,
    surface_features text,
    has_moons boolean,
    is_comet boolean
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    number_of_stars bigint,
    discovery_year integer,
    mass numeric NOT NULL,
    description text,
    has_supermassive_black_hole boolean,
    visible_to_naked_eye boolean
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
    name character varying NOT NULL,
    radius integer NOT NULL,
    distance_from_planet integer,
    orbital_inclination numeric,
    surface_features text,
    tidally_locked boolean,
    has_atmosphere boolean,
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
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    orbit_period integer,
    moons_count integer,
    surface_gravity numeric NOT NULL,
    atmosphere_composition text,
    supports_life boolean,
    has_rings boolean,
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
    star_id integer NOT NULL,
    name character varying NOT NULL,
    age bigint,
    luminosity_class integer,
    brightness numeric NOT NULL,
    composition text,
    is_main_sequence boolean,
    has_planets boolean,
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Ceres', 939, 413000000, 10.6, 'Dwarf planet with water ice', false, false);
INSERT INTO public.asteroid VALUES (2, 'Pallas', 545, 414000000, 34.4, 'One of the largest asteroids in the asteroid belt', false, false);
INSERT INTO public.asteroid VALUES (3, 'Halley', 11, 2866000000, 162.6, 'Famous periodic comet', false, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 200000000000, 1920, 1500000000000, 'The galaxy containing our solar system.', true, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 1000000000000, 1780, 1200000000000, 'Nearest spiral galaxy to the Milky Way.', true, true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 40000000000, 1951, 80000000000, 'A member of the Local Group of galaxies.', false, false);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool Galaxy', 100000000000, 1780, 120000000000, 'A spiral galaxy in the constellation Ursa Major.', true, true);
INSERT INTO public.galaxy VALUES (5, 'Messier 87', 500000000000, 1990, 6000000000000, 'A giant elliptical galaxy in the Virgo cluster.', true, false);
INSERT INTO public.galaxy VALUES (6, 'Sombrero Galaxy', 100000000000, 1930, 120000000000, 'A spiral galaxy with a bright nucleus and large dust lane.', true, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1737, 384400, 1.54, 'Craters, mountains', true, false, 1);
INSERT INTO public.moon VALUES (2, 'Europa', 1560, 670900, 0.1, 'Icy surface with possible subsurface ocean', true, false, 2);
INSERT INTO public.moon VALUES (3, 'Ganymede', 2634, 1070000, 0.2, 'Magnetic field, ice and rock surface', true, false, 2);
INSERT INTO public.moon VALUES (4, 'Io', 1821, 421700, 0.03, 'Volcanic activity, sulfur dioxide atmosphere', true, false, 2);
INSERT INTO public.moon VALUES (5, 'Callisto', 2410, 1882700, 0.1, 'Heavily cratered surface', true, false, 2);
INSERT INTO public.moon VALUES (6, 'Titan', 2575, 1221870, 0.3, 'Dense atmosphere, lakes of liquid methane', true, true, 6);
INSERT INTO public.moon VALUES (7, 'Rhea', 764, 527040, 0.3, 'Rings, heavily cratered surface', true, false, 6);
INSERT INTO public.moon VALUES (8, 'Dione', 561, 377400, 0.1, 'Ice-covered surface with bright, wispy streaks', true, false, 6);
INSERT INTO public.moon VALUES (9, 'Tethys', 533, 294660, 0.2, 'Large impact crater, icy surface', true, false, 6);
INSERT INTO public.moon VALUES (10, 'Enceladus', 252, 237900, 0.0, 'Geysers of water vapor, icy surface', true, false, 6);
INSERT INTO public.moon VALUES (11, 'Mimas', 198, 185520, 1.6, 'Large impact crater, heavily cratered', true, false, 6);
INSERT INTO public.moon VALUES (12, 'Miranda', 235, 129300, 4.0, 'Dramatic surface features, varied terrain', true, false, 7);
INSERT INTO public.moon VALUES (13, 'Ariel', 578, 191020, 0.8, 'Bright surface, icy terrain', true, false, 7);
INSERT INTO public.moon VALUES (14, 'Umbriel', 584, 266300, 0.8, 'Dark surface, old craters', true, false, 7);
INSERT INTO public.moon VALUES (15, 'Titania', 788, 436300, 1.0, 'Icy surface with dark regions', true, false, 7);
INSERT INTO public.moon VALUES (16, 'Oberon', 761, 583520, 0.1, 'Cratered surface, less active', true, false, 7);
INSERT INTO public.moon VALUES (17, 'Phobos', 11, 9377, 1.1, 'Irregular shape, surface grooves', true, false, 8);
INSERT INTO public.moon VALUES (18, 'Deimos', 6, 23460, 0.8, 'Small, smooth surface with craters', true, false, 8);
INSERT INTO public.moon VALUES (19, 'Chiron', 121, 122000, 2.0, 'Ringed moon with a complex surface', true, false, 9);
INSERT INTO public.moon VALUES (20, 'Nereid', 170, 1350000, 0.8, 'Highly elliptical orbit, surface features unknown', true, false, 9);
INSERT INTO public.moon VALUES (21, 'Proteus', 210, 117000, 0.0, 'Irregular shape, dark surface', true, false, 10);
INSERT INTO public.moon VALUES (22, 'Triton', 1353, 354760, 1.5, 'Retrograde orbit, geysers', true, true, 11);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 365, 1, 9.81, 'Nitrogen, Oxygen', true, false, 1);
INSERT INTO public.planet VALUES (2, 'Jupiter', 4333, 79, 24.79, 'Hydrogen, Helium', false, true, 2);
INSERT INTO public.planet VALUES (3, 'Mars', 687, 2, 3.71, 'Carbon Dioxide, Nitrogen', false, false, 3);
INSERT INTO public.planet VALUES (4, 'Mercury', 88, 0, 3.7, 'Thin exosphere', false, false, 4);
INSERT INTO public.planet VALUES (5, 'Venus', 225, 0, 8.87, 'Carbon Dioxide, Nitrogen', false, false, 5);
INSERT INTO public.planet VALUES (6, 'Saturn', 10759, 83, 10.44, 'Hydrogen, Helium', false, true, 6);
INSERT INTO public.planet VALUES (7, 'Uranus', 30687, 27, 8.69, 'Hydrogen, Helium, Methane', false, true, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 60190, 14, 11.15, 'Hydrogen, Helium, Methane', false, true, 2);
INSERT INTO public.planet VALUES (9, 'Pluto', 90560, 5, 0.66, 'Nitrogen, Methane', false, false, 3);
INSERT INTO public.planet VALUES (10, 'Eris', 203700, 1, 0.82, 'Methane, Nitrogen', false, false, 4);
INSERT INTO public.planet VALUES (11, 'Haumea', 28400, 2, 0.44, 'Methane, Water', false, false, 5);
INSERT INTO public.planet VALUES (12, 'Makemake', 11160, 0, 0.50, 'Methane, Ethane', false, false, 6);
INSERT INTO public.planet VALUES (13, 'Ceres', 1681, 0, 0.27, 'Carbon Dioxide', false, false, 1);
INSERT INTO public.planet VALUES (14, 'Charon', 6, 1, 0.30, 'Methane, Nitrogen', false, false, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 150, 1, 1.46, 'A main-sequence star of spectral type A1V.', true, true, 1);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 10000000, 2, -5.14, 'A red supergiant star.', false, false, 2);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 4000000000, 5, 11.05, 'A red dwarf star and the closest known star to the Sun.', true, true, 3);
INSERT INTO public.star VALUES (4, 'Alpha Centauri A', 5000000000, 1, -0.01, 'A Sun-like star.', true, true, 4);
INSERT INTO public.star VALUES (5, 'Altair', 200000000, 5, 0.77, 'A bright star in the constellation Aquila.', true, false, 5);
INSERT INTO public.star VALUES (6, 'Arcturus', 7000000000, 3, -0.05, 'A giant star in the constellation Boötes.', false, false, 6);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


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
-- Name: asteroid unique_asteroid_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT unique_asteroid_name UNIQUE (name);


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
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id) ON DELETE SET NULL;


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id) ON DELETE SET NULL;


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--
