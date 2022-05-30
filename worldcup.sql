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
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_games_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_games_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_games_id_seq OWNER TO freecodecamp;

--
-- Name: games_games_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_games_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    name character varying(330) NOT NULL,
    team_id integer NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_teams_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_teams_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_teams_id_seq OWNER TO freecodecamp;

--
-- Name: teams_teams_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_teams_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_games_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_teams_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (193, 2018, 'Final', 484, 485, 4, 2);
INSERT INTO public.games VALUES (194, 2018, 'Third Place', 486, 487, 2, 0);
INSERT INTO public.games VALUES (195, 2018, 'Semi-Final', 485, 487, 2, 1);
INSERT INTO public.games VALUES (196, 2018, 'Semi-Final', 484, 486, 1, 0);
INSERT INTO public.games VALUES (197, 2018, 'Quarter-Final', 485, 488, 3, 2);
INSERT INTO public.games VALUES (198, 2018, 'Quarter-Final', 487, 489, 2, 0);
INSERT INTO public.games VALUES (199, 2018, 'Quarter-Final', 486, 490, 2, 1);
INSERT INTO public.games VALUES (200, 2018, 'Quarter-Final', 484, 491, 2, 0);
INSERT INTO public.games VALUES (201, 2018, 'Eighth-Final', 487, 492, 2, 1);
INSERT INTO public.games VALUES (202, 2018, 'Eighth-Final', 489, 493, 1, 0);
INSERT INTO public.games VALUES (203, 2018, 'Eighth-Final', 486, 494, 3, 2);
INSERT INTO public.games VALUES (204, 2018, 'Eighth-Final', 490, 495, 2, 0);
INSERT INTO public.games VALUES (205, 2018, 'Eighth-Final', 485, 496, 2, 1);
INSERT INTO public.games VALUES (206, 2018, 'Eighth-Final', 488, 497, 2, 1);
INSERT INTO public.games VALUES (207, 2018, 'Eighth-Final', 491, 498, 2, 1);
INSERT INTO public.games VALUES (208, 2018, 'Eighth-Final', 484, 499, 4, 3);
INSERT INTO public.games VALUES (209, 2014, 'Final', 500, 499, 1, 0);
INSERT INTO public.games VALUES (210, 2014, 'Third Place', 501, 490, 3, 0);
INSERT INTO public.games VALUES (211, 2014, 'Semi-Final', 499, 501, 1, 0);
INSERT INTO public.games VALUES (212, 2014, 'Semi-Final', 500, 490, 7, 1);
INSERT INTO public.games VALUES (213, 2014, 'Quarter-Final', 501, 502, 1, 0);
INSERT INTO public.games VALUES (214, 2014, 'Quarter-Final', 499, 486, 1, 0);
INSERT INTO public.games VALUES (215, 2014, 'Quarter-Final', 490, 492, 2, 1);
INSERT INTO public.games VALUES (216, 2014, 'Quarter-Final', 500, 484, 1, 0);
INSERT INTO public.games VALUES (217, 2014, 'Eighth-Final', 490, 503, 2, 1);
INSERT INTO public.games VALUES (218, 2014, 'Eighth-Final', 492, 491, 2, 0);
INSERT INTO public.games VALUES (219, 2014, 'Eighth-Final', 484, 504, 2, 0);
INSERT INTO public.games VALUES (220, 2014, 'Eighth-Final', 500, 505, 2, 1);
INSERT INTO public.games VALUES (221, 2014, 'Eighth-Final', 501, 495, 2, 1);
INSERT INTO public.games VALUES (222, 2014, 'Eighth-Final', 502, 506, 2, 1);
INSERT INTO public.games VALUES (223, 2014, 'Eighth-Final', 499, 493, 1, 0);
INSERT INTO public.games VALUES (224, 2014, 'Eighth-Final', 486, 507, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES ('France', 484);
INSERT INTO public.teams VALUES ('Croatia', 485);
INSERT INTO public.teams VALUES ('Belgium', 486);
INSERT INTO public.teams VALUES ('England', 487);
INSERT INTO public.teams VALUES ('Russia', 488);
INSERT INTO public.teams VALUES ('Sweden', 489);
INSERT INTO public.teams VALUES ('Brazil', 490);
INSERT INTO public.teams VALUES ('Uruguay', 491);
INSERT INTO public.teams VALUES ('Colombia', 492);
INSERT INTO public.teams VALUES ('Switzerland', 493);
INSERT INTO public.teams VALUES ('Japan', 494);
INSERT INTO public.teams VALUES ('Mexico', 495);
INSERT INTO public.teams VALUES ('Denmark', 496);
INSERT INTO public.teams VALUES ('Spain', 497);
INSERT INTO public.teams VALUES ('Portugal', 498);
INSERT INTO public.teams VALUES ('Argentina', 499);
INSERT INTO public.teams VALUES ('Germany', 500);
INSERT INTO public.teams VALUES ('Netherlands', 501);
INSERT INTO public.teams VALUES ('Costa Rica', 502);
INSERT INTO public.teams VALUES ('Chile', 503);
INSERT INTO public.teams VALUES ('Nigeria', 504);
INSERT INTO public.teams VALUES ('Algeria', 505);
INSERT INTO public.teams VALUES ('Greece', 506);
INSERT INTO public.teams VALUES ('United States', 507);


--
-- Name: games_games_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_games_id_seq', 224, true);


--
-- Name: teams_teams_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_teams_id_seq', 507, true);


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

