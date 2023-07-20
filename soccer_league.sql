DROP DATABASE IF EXISTS soccer_league;

CREATE DATABASE soccer_league;

\c soccer_league

CREATE TABLE teams
(
team_id SERIAL PRIMARY KEY,
team_name TEXT NOT NULL,
team_city TEXT NOT NULL    
);

CREATE TABLE players
(
player_id SERIAL PRIMARY KEY,
player_name TEXT NOT NULL,
player_birthday TEXT NOT NULL,
player_height TEXT NOT NULL,
Foreign Key (current_team_id) References teams(id)
);

CREATE TABLE referees
(
referee_id SERIAL PRIMARY KEY,
referee_name TEXT NOT NULL
);

CREATE TABLE matches
(
match_id SERIAL PRIMARY KEY,
match_location TEXT NOT NULL,
match_date TEXT NOT NULL,
match_start_time TEXT NOT NULL,
Foreign Key (home_team_id) References teams(id),
Foreign Key (away_team_id) References teams(id),
Foreign Key (season_id) References season(id),
Foreign Key (head_referee_id) References referees(id),
Foreign Key (assistant_referee_1_id) References referees(id),
Foreign Key (assistant_referee_2_id) References referees(id)
);

CREATE TABLE goals
(
goal_id SERIAL PRIMARY KEY,
Foreign Key (player_id) References players(id),
Foreign Key (match_id) References matches(id)
);

CREATE TABLE lineups
(
lineup_id SERIAL PRIMARY KEY,
Foreign Key (player_id) References players(id),
Foreign Key (match_id) References matches(id),
Foreign Key (team_id) References teams(id)
);

CREATE TABLE season
(
season_id SERIAL PRIMARY KEY,
season_start_date TEXT NOT NULL,
season_end_date TEXT NOT NULL
);

INSERT INTO teams
(team_id, team_name, team_city)
VALUES
('1', 'Blue Team', 'Lexington'),
('2', 'Green Team', 'Louisville'),
('3', 'Purple Team', 'Indianapolis'),
('4', 'Yellow Team', 'Nashville');

INSERT INTO players
(player_id, player_name, player_birthday, player_height, team_id)
VALUES
('1', 'James Dean', '4/12/2012', '48 inches', '1'),
('2', 'Micheal Jackson', '3/22/2012', '49 inches', '1'),
('3', 'Taylor Swift', '12/20/2011', '46 inches', '1'),
('4', 'Britney Spears', '7/8/2012', '46 inches', '1'),
('5', 'Justin Timberlake', '5/23/2012', '48 inches', '1'),
('6', 'Dolly Parton', '11/12/2011', '45 inches', '2'),
('7', 'Lily Tomlin', '1/15/2012', '46 inches', '2'),
('8', 'Jane Fonda', '2/15/2012', '47 inches', '2'),
('9', 'Bea Arthur', '4/19/2012', '50 inches', '2'),
('10', 'Betty White', '6/13/2012', '44 inches', '2'),
('11', 'Spongebob', '3/17/2012', '42 inches', '3'),
('12', 'Patrick Star', '2/18/2012', '44 inches', '3'),
('13', 'Squidward', '3/4/2012', '46 inches', '3'),
('14', 'Mr. Krabs', '6/5/2012', '45 inches', '3'),
('15', 'Plankton', '11/1/2011', '40 inches', '3'),
('16', 'Dean Winchester', '10/29/2011', '48 inches', '4'),
('17', 'Sam Winchester', '1/11/2012', '49 inches', '4'),
('18', 'Castiel', '2/18/2012', '47 inches', '4'),
('19', 'Gabriel', '7/2/2012', '46 inches', '4'),
('20', 'Balthazar', '12/6/2011', '49 inches', '4');

INSERT INTO referees
(referee_id, referee_name)
VALUES
('1', 'Bill Renfro'),
('2', 'Sarah Trout'),
('3', 'Randall Fry'),
('4', 'Bree Kingston'),
('5', 'Bella Bingsley'),
('6', 'Trent Huxley');

INSERT INTO matches
(match_id, match_location, match_date, match_start_time, 
home_team_id, away_team_id, season_id, head_referee_id, 
assistant_referee_1_id, assistant_referee_2_id)
VALUES
('1', 'Lexington, KY', '6/5/2023', '7:00am', '1', '2', '1', '2', '4', '5');

INSERT INTO goals
(match_id, player_id, match_id)
VALUES
('1', '19', '1'),
('2', '3', '1');

INSERT INTO lineups
(lineup_id, player_id, match_id, team_id)
VALUES
('1', '1', '1', '1'),
('2', '2', '1', '1');

INSERT INTO season
(season_id, season_start_date, season_end_date)
VALUES
('1', '5/1/2023', '8/25/2023');