DROP DATABASE IF EXISTS soccer_league;

CREATE DATABASE soccer_league;

\c soccer_league

CREATE TABLE teams_roster
(
team_id SERIAL PRIMARY KEY,
team_name TEXT NOT NULL,
season_start TEXT NOT NULL,
season_end TEXT NOT NULL,
team_ranking TEXT NOT NULL    
);

CREATE TABLE players_roster
(
player_id SERIAL PRIMARY KEY,
player_name TEXT NOT NULL,
goal_number TEXT NOT NULL,
team_name TEXT NOT NULL
);

CREATE TABLE referees_roster
(
referee_id SERIAL PRIMARY KEY,
referee_name TEXT NOT NULL,
match_name TEXT NOT NULL
);

CREATE TABLE matches
(
match_id SERIAL PRIMARY KEY,
match_name TEXT NOT NULL,
match_outcome TEXT NOT NULL
);

INSERT INTO teams_roster
(team_id, team_name, season_start, season_end, team_ranking)
VALUES
('1', 'Blue Team', 'March', 'June', '4'),
('2', 'Green Team', 'March', 'July', '2'),
('3', 'Purple Team', 'March', 'June', '3'),
('4', 'Yellow Team', 'March', 'July', '1');

INSERT INTO players_roster
(player_id, player_name, goal_number, team_name)
VALUES
('1', 'James Dean', '3', 'Blue Team'),
('2', 'Micheal Jackson', '5', 'Blue Team'),
('3', 'Taylor Swift', '8', 'Blue Team'),
('4', 'Britney Spears', '2', 'Blue Team'),
('5', 'Justin Timberlake', '0', 'Blue Team'),
('6', 'Dolly Parton', '7', 'Green Team'),
('7', 'Lily Tomlin', '6', 'Green Team'),
('8', 'Jane Fonda', '9', 'Green Team'),
('9', 'Bea Arthur', '5', 'Green Team'),
('10', 'Betty White', '6', 'Green Team'),
('11', 'Spongebob', '4', 'Purple Team'),
('12', 'Patrick Star', '2', 'Purple Team'),
('13', 'Squidward', '8', 'Purple Team'),
('14', 'Mr. Krabs', '3', 'Purple Team'),
('15', 'Plankton', '1', 'Purple Team'),
('16', 'Dean Winchester', '10', 'Yellow Team'),
('17', 'Sam Winchester', '9', 'Yellow Team'),
('18', 'Castiel', '6', 'Yellow Team'),
('19', 'Gabriel', '7', 'Yellow Team'),
('20', 'Balthazar', '7', 'Yellow Team');

INSERT INTO referees_roster
(referee_id, referee_name, match_name)
VALUES
('1', 'Bill Renfro', 'Green vs. Blue'),
('2', 'Sarah Trout', 'Purple vs. Yellow'),
('3', 'Randall Fry', 'Green vs. Yellow'),
('4', 'Bree Kingston', 'Purple vs. Blue'),
('5', 'Bella Bingsley', 'Blue vs. Yellow'),
('6', 'Trent Huxley', 'Green vs. Purple');

INSERT INTO matches
(match_id, match_name, match_outcome)
VALUES
('1', 'Green vs. Blue', 'Green Won'),
('2', 'Purple vs. Yellow', 'Yellow Won'),
('3', 'Green vs. Yellow', 'Yellow Won'),
('4', 'Purple vs. Blue', 'Purple Won'),
('5', 'Blue vs. Yellow', 'Yellow Won'),
('6', 'Green vs. Purple', 'Green Won')