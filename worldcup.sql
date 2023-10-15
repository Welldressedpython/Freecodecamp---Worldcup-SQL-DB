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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    year integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    round character varying(30) NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: games_opponent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_opponent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_opponent_id_seq OWNER TO freecodecamp;

--
-- Name: games_opponent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_opponent_id_seq OWNED BY public.games.opponent_id;


--
-- Name: games_winner_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_winner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_winner_id_seq OWNER TO freecodecamp;

--
-- Name: games_winner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_winner_id_seq OWNED BY public.games.winner_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: games winner_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN winner_id SET DEFAULT nextval('public.games_winner_id_seq'::regclass);


--
-- Name: games opponent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN opponent_id SET DEFAULT nextval('public.games_opponent_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (42, 106, 107, 2018, 4, 2, 'Final');
INSERT INTO public.games VALUES (43, 108, 109, 2018, 2, 0, 'Third Place');
INSERT INTO public.games VALUES (44, 107, 109, 2018, 2, 1, 'Semi-Final');
INSERT INTO public.games VALUES (45, 106, 108, 2018, 1, 0, 'Semi-Final');
INSERT INTO public.games VALUES (46, 107, 110, 2018, 3, 2, 'Quarter-Final');
INSERT INTO public.games VALUES (47, 109, 111, 2018, 2, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (48, 108, 112, 2018, 2, 1, 'Quarter-Final');
INSERT INTO public.games VALUES (49, 106, 113, 2018, 2, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (50, 109, 114, 2018, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (51, 111, 115, 2018, 1, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (52, 108, 116, 2018, 3, 2, 'Eighth-Final');
INSERT INTO public.games VALUES (53, 112, 117, 2018, 2, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (54, 107, 118, 2018, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (55, 110, 119, 2018, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (56, 113, 120, 2018, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (57, 106, 121, 2018, 4, 3, 'Eighth-Final');
INSERT INTO public.games VALUES (58, 122, 121, 2014, 1, 0, 'Final');
INSERT INTO public.games VALUES (59, 123, 112, 2014, 3, 0, 'Third Place');
INSERT INTO public.games VALUES (60, 121, 123, 2014, 1, 0, 'Semi-Final');
INSERT INTO public.games VALUES (61, 122, 112, 2014, 7, 1, 'Semi-Final');
INSERT INTO public.games VALUES (62, 123, 124, 2014, 1, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (63, 121, 108, 2014, 1, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (64, 112, 114, 2014, 2, 1, 'Quarter-Final');
INSERT INTO public.games VALUES (65, 122, 106, 2014, 1, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (66, 112, 125, 2014, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (67, 114, 113, 2014, 2, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (68, 106, 126, 2014, 2, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (69, 122, 127, 2014, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (70, 123, 117, 2014, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (71, 124, 128, 2014, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (72, 121, 115, 2014, 1, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (73, 108, 129, 2014, 2, 1, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (106, 'France');
INSERT INTO public.teams VALUES (107, 'Croatia');
INSERT INTO public.teams VALUES (108, 'Belgium');
INSERT INTO public.teams VALUES (109, 'England');
INSERT INTO public.teams VALUES (110, 'Russia');
INSERT INTO public.teams VALUES (111, 'Sweden');
INSERT INTO public.teams VALUES (112, 'Brazil');
INSERT INTO public.teams VALUES (113, 'Uruguay');
INSERT INTO public.teams VALUES (114, 'Colombia');
INSERT INTO public.teams VALUES (115, 'Switzerland');
INSERT INTO public.teams VALUES (116, 'Japan');
INSERT INTO public.teams VALUES (117, 'Mexico');
INSERT INTO public.teams VALUES (118, 'Denmark');
INSERT INTO public.teams VALUES (119, 'Spain');
INSERT INTO public.teams VALUES (120, 'Portugal');
INSERT INTO public.teams VALUES (121, 'Argentina');
INSERT INTO public.teams VALUES (122, 'Germany');
INSERT INTO public.teams VALUES (123, 'Netherlands');
INSERT INTO public.teams VALUES (124, 'Costa Rica');
INSERT INTO public.teams VALUES (125, 'Chile');
INSERT INTO public.teams VALUES (126, 'Nigeria');
INSERT INTO public.teams VALUES (127, 'Algeria');
INSERT INTO public.teams VALUES (128, 'Greece');
INSERT INTO public.teams VALUES (129, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 73, true);


--
-- Name: games_opponent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_opponent_id_seq', 1, false);


--
-- Name: games_winner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_winner_id_seq', 1, false);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 129, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

