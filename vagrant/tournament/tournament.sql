-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

-- CREATE a new database `tournament`; DROP the database if it already
-- exists.
DROP DATABASE IF EXISTS tournament;
CREATE DATABASE tournament;

-- Connect to the database `tournament`; all statements below will
-- execute in the context of this database.
\c tournament;

-- CREATE table `player`
-- @id 
CREATE TABLE player (id SERIAL PRIMARY KEY,
                      name TEXT
                      );

-- matches: stores the tournament, round, participants and outcome
CREATE TABLE matches (id SERIAL PRIMARY KEY,
                      winner INT REFERENCES players(id),
                      loser INT REFERENCES players(id)
                      );

-- standings: player rankings, including names and # of matches
CREATE VIEW standings AS
	SELECT players.id,
		players.name,
		(SELECT COUNT(*) FROM matches WHERE players.id = matches.winner) AS wins,
		(SELECT COUNT(*) FROM matches WHERE players.id = matches.winner OR players.id = matches.loser) AS matches
	FROM players
	ORDER BY wins DESC;
