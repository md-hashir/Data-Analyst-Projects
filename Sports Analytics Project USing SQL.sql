DROP DATABASE IF EXISTS Sports_Analytics;
CREATE DATABASE Sports_Analytics;
USE Sports_Analytics;
CREATE TABLE Teams(
    team_id INT AUTO_INCREMENT,
    team_name VARCHAR(100) NOT NULL UNIQUE,
    PRIMARY KEY(team_id));
    
    CREATE TABLE Players(
    player_id INT AUTO_INCREMENT,
    player_name VARCHAR(100) NOT NULL,
    team_id INT NOT NULL,
    PRIMARY KEY(player_id),
    FOREIGN KEY(team_id)
    REFERENCES Teams(team_id));
    
    CREATE TABLE Matches(
    match_id INT PRIMARY KEY,
    match_date DATE,
    ground VARCHAR(100),
    team1_id INT,
    team2_id INT,
    winner_team_id INT,
    win_by INT,
    win_type VARCHAR(50),
    scorecard VARCHAR(255),
    FOREIGN KEY(team1_id)
    REFERENCES Teams(team_id),
    FOREIGN KEY(team2_id)
    REFERENCES Teams(team_id),
    FOREIGN KEY(winner_team_id)
    REFERENCES Teams(team_id));
    
    CREATE TABLE Batting_Stats(
    batting_id INT PRIMARY KEY,
    player_id INT,
    span VARCHAR(20),
    matches INT,
    innings INT,
    not_outs INT,
    runs INT,
    highest_score VARCHAR(20),
    average DECIMAL(6,2),
    balls_faced INT,
    strike_rate DECIMAL(6,2),
    hundreds INT,
    fifties INT,
    ducks INT,
    fours INT,
    sixes INT,
    FOREIGN KEY(player_id)
    REFERENCES Players(player_id));
    
    
    CREATE TABLE Bowling_Stats(
    bowling_id INT PRIMARY KEY,
    player_id INT,
    span VARCHAR(20),
    matches INT,
    innings INT,
    overs DECIMAL(5,1),
    maidens INT,
    runs_given INT,
    wickets INT,
    best_bowling VARCHAR(20),
    bowling_average DECIMAL(6,2),
    economy DECIMAL(5,2),
    strike_rate DECIMAL(6,2),
    four_wickets INT,
    five_wickets INT,
    catches INT,
    stumpings INT,
    FOREIGN KEY(player_id)
    REFERENCES Players(player_id));
--- Insert data into teams    
    INSERT INTO Teams (team_name)
VALUES('Islamabad United'),
('Karachi Kings'),
('Lahore Qalandars'),
('Multan Sultans'),
('Peshawar Zalmi'),
('Quetta Gladiators');


-- Insert data into Players
INSERT INTO Players (player_name, team_id)
VALUES

-- Islamabad United
('Shadab Khan',1),
('Colin Munro',1),
('Azam Khan',1),
('Alex Hales',1),
('Faheem Ashraf',1),
('Imad Wasim',1),
('Haider Ali',1),
('Salman Irshad',1),
('Naseem Shah',1),
('Rumman Raees',1),

-- Karachi Kings
('James Vince',2),
('Tim Seifert',2),
('Irfan Khan',2),
('Aamir Jamal',2),
('Hasan Ali',2),
('Shan Masood',2),
('Mir Hamza',2),
('Tabraiz Shamsi',2),
('Khushdil Shah',2),
('Anwar Ali',2),

-- Lahore Qalandars
('Shaheen Afridi',3),
('Fakhar Zaman',3),
('Abdullah Shafique',3),
('Sikandar Raza',3),
('Haris Rauf',3),
('David Wiese',3),
('Rassie van der Dussen',3),
('Asif Afridi',3),
('Zaman Khan',3),
('Jahandad Khan',3),

-- Multan Sultans
('Mohammad Rizwan',4),
('Usman Khan',4),
('Iftikhar Ahmed',4),
('Chris Jordan',4),
('David Willey',4),
('Usama Mir',4),
('Mohammad Ali',4),
('Tayyab Tahir',4),
('Reeza Hendricks',4),
('Shahnawaz Dahani',4),

-- Peshawar Zalmi
('Babar Azam',5),
('Saim Ayub',5),
('Mohammad Haris',5),
('Tom Kohler-Cadmore',5),
('Rovman Powell',5),
('Luke Wood',5),
('Arif Yaqoob',5),
('Mehran Mumtaz',5),
('Aamer Jamal',5),
('Khurram Shahzad',5),

-- Quetta Gladiators
('Sarfaraz Ahmed',6),
('Jason Roy',6),
('Saud Shakeel',6),
('Mohammad Amir',6),
('Abrar Ahmed',6),
('Sherfane Rutherford',6),
('Akeal Hosein',6),
('Mohammad Wasim Jr',6),
('Will Smeed',6),
('Khawaja Nafay',6);


--- Insert Data into Matches Table
INSERT INTO Matches
(match_id,match_date,ground,team1_id,team2_id,winner_team_id,win_by,win_type,scorecard)
VALUES(1,'2024-02-17','Lahore',1,2,1,8,'Wickets','IU 181/4 vs KK 178/7'),
(2,'2024-02-18','Karachi',3,4,3,15,'Runs','LQ 190/6 vs MS 175/8'),
(3,'2024-02-19','Rawalpindi',5,6,5,6,'Wickets','PZ 170/4 vs QG 168/9'),
(4,'2024-02-20','Multan',2,4,4,25,'Runs','MS 185/5 vs KK 160/9'),
(5,'2024-02-21','Lahore',1,3,3,10,'Runs','LQ 178/6 vs IU 168/9'),
(6,'2024-02-22','Karachi',6,2,2,5,'Wickets','KK 165/5 vs QG 163/8'),
(7,'2024-02-23','Rawalpindi',4,5,4,12,'Runs','MS 188/4 vs PZ 176/7'),
(8,'2024-02-24','Multan',3,6,6,4,'Wickets','QG 172/6 vs LQ 171/8'),
(9,'2024-02-25','Lahore',2,5,5,18,'Runs','PZ 180/5 vs KK 162/9'),
(10,'2024-02-26','Karachi',1,4,1,7,'Wickets','IU 176/3 vs MS 174/7');



INSERT INTO Batting_Stats
(batting_id, player_id, span, matches, innings, not_outs, runs, highest_score, average, balls_faced, strike_rate, hundreds, fifties, ducks, fours, sixes)
VALUES
(1,1,'2024',10,10,2,345,'78',43.13,250,138.00,0,3,1,32,15),
(2,2,'2024',10,10,1,410,'92',45.56,290,141.38,0,4,0,40,18),
(3,3,'2024',10,9,2,278,'66',39.71,210,132.38,0,2,1,25,12),
(4,4,'2024',10,10,0,389,'95',38.90,275,141.45,0,4,0,38,17),
(5,5,'2024',10,9,3,301,'72',50.17,220,136.82,0,3,0,28,14),
(6,6,'2024',10,8,2,256,'61',42.67,185,138.38,0,2,1,24,11),
(7,7,'2024',10,10,1,198,'49',22.00,170,116.47,0,0,2,18,6),
(8,8,'2024',10,7,2,145,'41',29.00,120,120.83,0,0,1,14,5),
(9,9,'2024',10,6,1,96,'33',19.20,85,112.94,0,0,2,8,3),
(10,10,'2024',10,5,2,72,'24',24.00,60,120.00,0,0,1,6,2),
(11,11,'2024',10,10,1,432,'101*',48.00,305,141.64,1,3,0,44,20),
(12,12,'2024',10,10,2,355,'88',44.38,260,136.54,0,4,1,34,16),
(13,13,'2024',10,9,1,248,'63',31.00,195,127.18,0,2,1,22,10),
(14,14,'2024',10,8,2,214,'58',35.67,170,125.88,0,1,1,20,9),
(15,15,'2024',10,7,3,187,'54',46.75,145,128.97,0,1,0,18,8);



INSERT INTO Batting_Stats
(batting_id, player_id, span, matches, innings, not_outs, runs, highest_score, average, balls_faced, strike_rate, hundreds, fifties, ducks, fours, sixes)
VALUES
(16,16,'2024',10,10,1,265,'67',29.44,205,129.27,0,2,1,24,11),
(17,17,'2024',10,9,2,198,'52',28.29,170,116.47,0,1,2,18,7),
(18,18,'2024',10,8,3,156,'48',31.20,130,120.00,0,0,1,15,5),
(19,19,'2024',10,9,1,289,'74',36.13,220,131.36,0,2,1,27,13),
(20,20,'2024',10,10,0,178,'43',17.80,150,118.67,0,0,2,16,6),
(21,21,'2024',10,9,2,315,'81',45.00,225,140.00,0,3,0,31,15),
(22,22,'2024',10,10,1,428,'103*',47.56,300,142.67,1,3,0,42,21),
(23,23,'2024',10,9,2,301,'79',43.00,218,138.07,0,3,1,29,14),
(24,24,'2024',10,8,1,244,'69',34.86,180,135.56,0,2,1,22,10),
(25,25,'2024',10,7,2,176,'51',35.20,145,121.38,0,1,0,17,7),
(26,26,'2024',10,8,3,202,'57',40.40,160,126.25,0,1,1,20,8),
(27,27,'2024',10,7,2,164,'46',32.80,135,121.48,0,0,1,15,6),
(28,28,'2024',10,6,2,118,'39',29.50,98,120.41,0,0,1,11,4),
(29,29,'2024',10,5,1,94,'31',23.50,82,114.63,0,0,2,8,3),
(30,30,'2024',10,4,1,63,'22',21.00,58,108.62,0,0,1,6,2);

INSERT INTO Bowling_Stats
(bowling_id, player_id, span, matches, innings, overs, maidens, runs_given, wickets, best_bowling, bowling_average, economy, strike_rate, four_wickets, five_wickets, catches, stumpings)
VALUES
(1,1,'2024',10,10,38.2,2,280,12,'3/28',23.33,7.30,19.20,0,0,5,0),
(2,2,'2024',10,2,4.0,0,35,1,'1/18',35.00,8.75,24.00,0,0,3,0),
(3,3,'2024',10,10,40.0,3,260,18,'4/22',14.44,6.50,13.33,1,0,6,0),
(4,4,'2024',10,1,2.0,0,20,0,'0/20',0.00,10.00,0.00,0,0,2,0),
(5,5,'2024',10,9,34.0,1,245,10,'3/30',24.50,7.21,20.40,0,0,4,0),
(6,6,'2024',10,10,36.0,2,252,15,'4/25',16.80,7.00,14.40,1,0,8,0),
(7,7,'2024',10,3,6.0,0,48,2,'2/21',24.00,8.00,18.00,0,0,2,0),
(8,8,'2024',10,8,30.0,1,220,9,'3/27',24.44,7.33,20.00,0,0,4,0),
(9,9,'2024',10,10,39.0,4,210,21,'5/18',10.00,5.38,11.14,1,1,7,0),
(10,10,'2024',10,5,10.0,0,82,3,'2/20',27.33,8.20,20.00,0,0,3,0),
(11,11,'2024',10,2,3.0,0,26,1,'1/15',26.00,8.67,18.00,0,0,5,0),
(12,12,'2024',10,1,1.0,0,12,0,'0/12',0.00,12.00,0.00,0,0,2,0),
(13,13,'2024',10,8,28.0,1,215,8,'3/32',26.88,7.68,21.00,0,0,4,0),
(14,14,'2024',10,10,37.0,2,250,14,'4/30',17.86,6.76,15.86,1,0,6,0),
(15,15,'2024',10,9,33.0,1,235,11,'3/24',21.36,7.12,18.00,0,0,5,0);
INSERT INTO Bowling_Stats
(bowling_id, player_id, span, matches, innings, overs, maidens, runs_given, wickets, best_bowling, bowling_average, economy, strike_rate, four_wickets, five_wickets, catches, stumpings)
VALUES
(16,16,'2024',10,8,29.0,1,210,9,'3/26',23.33,7.24,19.33,0,0,4,0),
(17,17,'2024',10,10,40.0,3,255,17,'4/21',15.00,6.38,14.12,1,0,6,0),
(18,18,'2024',10,5,12.0,0,96,4,'2/19',24.00,8.00,18.00,0,0,3,0),
(19,19,'2024',10,9,35.0,2,248,12,'3/29',20.67,7.09,17.50,0,0,5,0),
(20,20,'2024',10,10,38.0,2,265,16,'4/24',16.56,6.97,14.25,1,0,7,0),
(21,21,'2024',10,1,2.0,0,18,0,'0/18',0.00,9.00,0.00,0,0,2,0),
(22,22,'2024',10,4,8.0,0,60,2,'2/22',30.00,7.50,24.00,0,0,3,0),
(23,23,'2024',10,10,39.0,2,245,18,'4/19',13.61,6.28,13.00,1,0,5,0),
(24,24,'2024',10,8,31.0,1,222,10,'3/31',22.20,7.16,18.60,0,0,4,0),
(25,25,'2024',10,10,40.0,4,205,22,'5/20',9.32,5.13,10.91,1,1,8,0),
(26,26,'2024',10,6,15.0,0,118,5,'2/25',23.60,7.87,18.00,0,0,2,0),
(27,27,'2024',10,9,32.0,1,228,11,'3/28',20.73,7.13,17.45,0,0,5,0),
(28,28,'2024',10,10,36.0,2,240,13,'4/27',18.46,6.67,16.62,1,0,6,0),
(29,29,'2024',10,7,20.0,0,150,6,'2/30',25.00,7.50,20.00,0,0,3,0),
(30,30,'2024',10,10,38.0,3,218,19,'5/23',11.47,5.74,12.00,1,1,7,0);

--- SQL Practice Tasks 
--- Task 1 show all teams
select team_name from teams;
--- Task 2 show all Players 
select player_name from players;
--- Task 3 show all matches
select * from matches;
--- Task 4 display unique ground 
select distinct ground from matches;
--- Task 5 find player from lahore qalandars 
select p.player_name from players p join teams t on p.team_id = t.team_id 
where t.team_name = 'Lahore Qalandars';
--- Task 6 show players sorted alphabetically
select * from players order by player_name asc;
--- Task 7 display top 10 players;
select player_name from players limit 10;
--- Task 8 find matches after a specific date 
select * from matches where match_date ='2024-02-26';
--- Task 9 show players whos name is start with M
select * from players where player_name like 'M%';
--- Task 10 find matches played in lahore ;
select * from matches where ground = 'lahore';
--- Task 11 count total teams 
select count(team_name) as total_team from teams;
--- Task 12 count Total players
select count(player_name) as total_players from players;
--- Task 13 count total matches
select count(*) as total_matches from matches;
--- Task 14 find highest batting run 
select p.player_name,max(b.highest_score) as highest_score from batting_stats b join players p on 
p.player_id = b.player_id group by p.player_name order by highest_score desc limit 1;
--- Task 15 find lowest batting average.
select p.player_name,b.average from batting_Stats b  join players p on b.player_id = p.player_id
order by b.average asc limit 1;
--- Task 16 find maximum wickets 
select p.player_name,max(b.wickets) as maximum_wickets from bowling_stats b join players p on b.player_id = p.player_id 
group by p.player_name order by maximum_wickets desc;
--- Task 17 show players with more than 1000 runs
select p.player_name,b.runs from batting_stats b join players p on b.player_id = p.player_id
where b.runs >1000;
--- Task 18 find players with strike rate above 140.
select p.player_name,b.strike_rate from batting_stats b join players p on b.player_id = p.player_id
where strike_rate >=140; 
--- Task 19 show bowler with economy below 7 
select p.player_name,b.economy from bowling_Stats b join players p on b.player_id = p.player_id 
where b.economy <= 7;
--- Task 20 display players with more than 15 sixes 
select p.player_name,b.sixes from batting_Stats b join players p on b.player_id = p.player_id 
where b.sixes >= 15;
--- Task 21 total run by each teams
select t.team_name,sum(b.runs) as total_run from batting_stats b join players p on b.player_id = p.player_id
join teams t on p.team_id = t.team_id group by t.team_name;
--- Task 22 total wickets by each time
select t.team_name,sum(b.wickets) as total_wickets from bowling_stats b join players p on b.player_id = 
p.player_id join teams t on p.team_id = t.team_id group by t.team_name;
--- Task 23 average strike rate of each team
select t.team_name,round(avg(b.strike_rate),2) as average_strike_rate from batting_stats b join players p on 
b.player_id = p.player_id join teams t on p.team_id = t.team_id group by t.team_name;
--- Task 24 average economy by each time 
select t.team_name,round(avg(b.economy),2) as average_economy_byteam from bowling_stats b join players p
 on b.player_id = p.player_id join teams t on p.team_id = t.team_id group by t.team_name;
 --- Task 25 totl sixes by times
select t.team_name,sum(b.sixes) as total_sixes from batting_stats b join players p on b.player_id = 
p.player_id join teams t on p.team_id = t.team_id group by t.team_name;
--- Task 26 Total four by team
select t.team_name,sum(b.fours) as total_four from batting_stats b join players p on b.player_id = 
p.player_id join teams t on t.team_id = p.team_id group by t.team_name; 
--- Task 27 Total hundered by team 
select t.team_name,sum(b.hundreds) as total_hundered from batting_Stats b join players p on b.player_id =
p.player_id join teams t on t.team_id = p.team_id group by t.team_name;
--- Task 28 Total fifties by team 
select t.team_name,sum(b.fifties) as total_fifties from batting_Stats b join players p on b.player_id =
p.player_id join teams t on t.team_id = p.team_id group by t.team_name;
--- Task 29 count player in each team 
select t.team_name,count(b.player_id) as total_player_eachteam from batting_stats b join players p on
b.player_id = p.player_id join teams t on t.team_id = p.team_id group by t.team_name;
--- Task 30 team with maximum runs
select t.team_name,sum(b.runs) as maximum_runs from batting_Stats b join players p on b.player_id =
p.player_id join teams t on t.team_id = p.team_id group by t.team_name;
--- Task 31 tema with maximum wickets 
 select t.team_name,sum(b.wickets) as maximum_wickets from bowling_Stats b join players p on b.player_id =
p.player_id join teams t on t.team_id = p.team_id group by t.team_name;
--- Task 32 team with highest average
select t.team_name,round(avg(b.average),2) as highest_average from batting_Stats b join players p on b.player_id =
p.player_id join teams t on t.team_id = p.team_id group by t.team_name;
--- Task 33 ground hosting most matching
select ground,count(match_id) as most_hostingmatch from matches group by ground;
--- Task 34 count matches won by each team
select t.team_name,count(match_id) as matches_won from matches m join teams t on m.winner_team_id = 
t.team_id group by t.team_name;
--- Task 35 player with above average runs
select p.player_name,b.runs from batting_Stats b join players p on b.player_id = p.player_id 
 where b.runs >= (select avg(runs)from batting_Stats);
 --- Task 36 player with below average strike rate
 select p.player_name,b.strike_rate from batting_stats b join players p on b.player_id = p.player_id 
 where b.strike_rate < (select avg(strike_rate) from batting_Stats);
--- Task 37 matches won by wickets 
select * from matches where win_type = 'wickets';
--- Task 38 matches won by runs
select count(*) as won_byruns from matches where win_type ='runs';
--- Task 39 inner join all table
SELECT p.player_name,t.team_name,bs.runs AS batting_runs,bs.average AS batting_avg,
bos.wickets AS bowling_wickets,bos.economy AS bowling_economy,m.match_id,m.match_date,m.ground FROM 
Players p
INNER JOIN Batting_Stats bs ON p.player_id = bs.player_id
INNER JOIN Bowling_Stats bos ON p.player_id = bos.player_id
INNER JOIN Teams t ON p.team_id = t.team_id
INNER JOIN Matches m ON t.team_id = m.team1_id ;
--- Task 40 left join team and players 
select t.team_name,p.player_name from teams t left join players p on t.team_id = p.team_id;
--- Task 41 right join on player and batting stats 
select p.player_name,b.runs,b.highest_score,b.average,b.strike_rate from batting_stats b 
right join players p on b.player_id = p.player_id ;
--- Task 42 find player without batting record 
select p.player_name from players p left join batting_Stats b on p.player_id = b.player_id where 
b.player_id is null;
--- Task 43 find player without bowling record 
select p.player_name from players p left join bowling_Stats b on p.player_id = b.player_id where b.player_id
is null;
--- Task 44 subquery for highest scorer
select p.player_name,b.runs from batting_Stats b join players p on b.player_id = p.player_id where
b.runs = (select max(runs)from batting_Stats);
--- Task 45 subquery for highest wicket taker
select p.player_name,b.wickets from players p join bowling_Stats b on p.player_id = b.player_id where
b.wickets =(select max(wickets) from bowling_Stats);
--- Task 46 top five runs scorer
select p.player_name,b.runs from players p join batting_stats b on p.player_id = b.player_id order by
b.runs desc limit 5;
--- Task 47 top five wicket taker
select p.player_name,b.wickets from players p join bowling_Stats b on p.player_id = b.player_id
order by b.wickets desc limit 5;
--- Task 48 Find duplicate player names.
select player_name,count(*) from players group by player_name having count(*) >1;
--- Task 49 player above team average
SELECT t.team_name,round(avg(b.average),2) as team_batting_average from batting_Stats b join players p 
on b.player_id = p.player_id join teams t on p.team_id = t.team_id group by t.team_name order by
team_batting_average desc limit 1;
--- Task 50 team with lowest economy;
SELECT t.team_name,round(avg(b.economy),2) as team_lowest_economy from bowling_Stats b join players p 
on b.player_id = p.player_id join teams t on p.team_id = t.team_id group by t.team_name order by
team_lowest_economy asc limit 1;
--- create a view for player performance 
create view player_performance as 
select p.player_name,t.team_name,b.runs,b.average,b.strike_rate,bo.wickets,bo.economy from Players p
JOIN Teams t ON p.team_id = t.team_id
LEFT JOIN Batting_Stats b ON p.player_id = b.player_id
LEFT JOIN Bowling_Stats bo ON p.player_id = bo.player_id;
select * from player_performance;
--- Task 52 best batsman
SELECT p.player_name, b.average, b.runs FROM Batting_Stats b
JOIN Players p ON b.player_id = p.player_id ORDER BY b.average DESC LIMIT 1;
--- Task 53 best bowler
select p.player_name,b.wickets,b.economy from bowling_Stats b join players p on b.player_id = p.player_id
order by b.wickets desc limit 1;
--- Task 54 most economical bowler
select p.player_name,b.economy from bowling_Stats b join players p on b.player_id = p.player_id order by
b.economy asc limit 1;
--- Task 55 highest strike rate 
select p.player_name,b.strike_rate from batting_stats b join players p on b.player_id = p.player_id 
order by b.strike_rate desc limit 1;
--- Task 56 highest batting average 
select p.player_name,b.average from batting_stats b join players p on b.player_id = p.player_id order by
b.average desc limit 1;
--- Task 57 highest wickets taker
select p.player_name,b.wickets from bowling_Stats b join players p on b.player_id = p.player_id order by
b.wickets desc limit 1;
--- Task 58 best bowling figure 
select p.player_name,b.wickets,b.economy from bowling_Stats b join players p on b.player_id = p.player_id
order by b.wickets desc,b.economy asc limit 1;
--- Task 59 ground wise performance
select ground,count(*) as total_matches,
sum(case when win_type = 'runs' then 1 else 0 end) as bat_first_won,
sum(case when win_type = 'wickets' then 1 else 0 end) as chase_won from matches group by ground;
--- Task 60 overall tournament report 
select 
    (select COUNT(*) from Matches) as total_matches_played,
    (select COUNT(*) from Teams) as total_teams_participated,
    (select COUNT(*) from Players) as total_players_registered,
    (select SUM(runs) from Batting_Stats) as total_tournament_runs,
    (select SUM(wickets) from Bowling_Stats) as total_tournament_wickets,
    (select COUNT(*) from Matches where win_type = 'runs') as bat_first_won_count,
    (select COUNT(*) from Matches where win_type = 'wickets') as chase_won_count;