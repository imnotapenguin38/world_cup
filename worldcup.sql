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
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
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
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (140, 2018, 'Final', 4, 2, 534, 535);
INSERT INTO public.games VALUES (141, 2018, 'Third Place', 2, 0, 536, 537);
INSERT INTO public.games VALUES (142, 2018, 'Semi-Final', 2, 1, 535, 537);
INSERT INTO public.games VALUES (143, 2018, 'Semi-Final', 1, 0, 534, 536);
INSERT INTO public.games VALUES (144, 2018, 'Quarter-Final', 3, 2, 535, 538);
INSERT INTO public.games VALUES (145, 2018, 'Quarter-Final', 2, 0, 537, 539);
INSERT INTO public.games VALUES (146, 2018, 'Quarter-Final', 2, 1, 536, 540);
INSERT INTO public.games VALUES (147, 2018, 'Quarter-Final', 2, 0, 534, 541);
INSERT INTO public.games VALUES (148, 2018, 'Eighth-Final', 2, 1, 537, 542);
INSERT INTO public.games VALUES (149, 2018, 'Eighth-Final', 1, 0, 539, 543);
INSERT INTO public.games VALUES (150, 2018, 'Eighth-Final', 3, 2, 536, 544);
INSERT INTO public.games VALUES (151, 2018, 'Eighth-Final', 2, 0, 540, 545);
INSERT INTO public.games VALUES (152, 2018, 'Eighth-Final', 2, 1, 535, 546);
INSERT INTO public.games VALUES (153, 2018, 'Eighth-Final', 2, 1, 538, 547);
INSERT INTO public.games VALUES (154, 2018, 'Eighth-Final', 2, 1, 541, 548);
INSERT INTO public.games VALUES (155, 2018, 'Eighth-Final', 4, 3, 534, 549);
INSERT INTO public.games VALUES (156, 2014, 'Final', 1, 0, 550, 549);
INSERT INTO public.games VALUES (157, 2014, 'Third Place', 3, 0, 551, 540);
INSERT INTO public.games VALUES (158, 2014, 'Semi-Final', 1, 0, 549, 551);
INSERT INTO public.games VALUES (159, 2014, 'Semi-Final', 7, 1, 550, 540);
INSERT INTO public.games VALUES (160, 2014, 'Quarter-Final', 1, 0, 551, 552);
INSERT INTO public.games VALUES (161, 2014, 'Quarter-Final', 1, 0, 549, 536);
INSERT INTO public.games VALUES (162, 2014, 'Quarter-Final', 2, 1, 540, 542);
INSERT INTO public.games VALUES (163, 2014, 'Quarter-Final', 1, 0, 550, 534);
INSERT INTO public.games VALUES (164, 2014, 'Eighth-Final', 2, 1, 540, 553);
INSERT INTO public.games VALUES (165, 2014, 'Eighth-Final', 2, 0, 542, 541);
INSERT INTO public.games VALUES (166, 2014, 'Eighth-Final', 2, 0, 534, 554);
INSERT INTO public.games VALUES (167, 2014, 'Eighth-Final', 2, 1, 550, 555);
INSERT INTO public.games VALUES (168, 2014, 'Eighth-Final', 2, 1, 551, 545);
INSERT INTO public.games VALUES (169, 2014, 'Eighth-Final', 2, 1, 552, 556);
INSERT INTO public.games VALUES (170, 2014, 'Eighth-Final', 1, 0, 549, 543);
INSERT INTO public.games VALUES (171, 2014, 'Eighth-Final', 2, 1, 536, 557);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (534, 'France');
INSERT INTO public.teams VALUES (535, 'Croatia');
INSERT INTO public.teams VALUES (536, 'Belgium');
INSERT INTO public.teams VALUES (537, 'England');
INSERT INTO public.teams VALUES (538, 'Russia');
INSERT INTO public.teams VALUES (539, 'Sweden');
INSERT INTO public.teams VALUES (540, 'Brazil');
INSERT INTO public.teams VALUES (541, 'Uruguay');
INSERT INTO public.teams VALUES (542, 'Colombia');
INSERT INTO public.teams VALUES (543, 'Switzerland');
INSERT INTO public.teams VALUES (544, 'Japan');
INSERT INTO public.teams VALUES (545, 'Mexico');
INSERT INTO public.teams VALUES (546, 'Denmark');
INSERT INTO public.teams VALUES (547, 'Spain');
INSERT INTO public.teams VALUES (548, 'Portugal');
INSERT INTO public.teams VALUES (549, 'Argentina');
INSERT INTO public.teams VALUES (550, 'Germany');
INSERT INTO public.teams VALUES (551, 'Netherlands');
INSERT INTO public.teams VALUES (552, 'Costa Rica');
INSERT INTO public.teams VALUES (553, 'Chile');
INSERT INTO public.teams VALUES (554, 'Nigeria');
INSERT INTO public.teams VALUES (555, 'Algeria');
INSERT INTO public.teams VALUES (556, 'Greece');
INSERT INTO public.teams VALUES (557, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 171, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 557, true);


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

