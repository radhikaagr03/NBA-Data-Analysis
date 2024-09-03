##SQL Queries based on the database schema for Sports Performance Analytics
##Submitted by Shreya, Radhika, Ayesha - Group Insights Squad

INSERT INTO TEAM (TID, TName) VALUES
('T00001', 'Boston Celtics'),
('T00002', 'Brooklyn Nets'),
('T00003', 'New York Knicks'),
('T00004', 'Philadelphia 76ers'),
('T00005', 'Toronto Raptors'),
('T00006', 'Chicago Bulls'),
('T00007', 'Cleveland Cavaliers'),
('T00008', 'Detroit Pistons'),
('T00009', 'Indiana Pacers'),
('T00010', 'Milwaukee Bucks'),
('T00011', 'Atlanta Hawks'),
('T00012', 'Charlotte Hornets');

INSERT INTO MATCH_NAME (Date, MID, Result) VALUES
('2023-11-15', 'M00001', 'Home Win'),
('2023-10-25', 'M00002', 'Away Win'),
('2023-12-05', 'M00003', 'Home Win'),
('2023-11-27', 'M00004', 'Away Win'),
('2023-10-30', 'M00005', 'Home Win'),
('2023-12-17', 'M00006', 'Away Win'),
('2023-11-22', 'M00007', 'Home Win'),
('2023-12-09', 'M00008', 'Away Win'),
('2023-11-20', 'M00009', 'Home Win'),
('2023-12-30', 'M00010', 'Away Win'),
('2023-10-18', 'M00011', 'Home Win'),
('2023-12-29', 'M00012', 'Away Win'),
('2023-11-05', 'M00013', 'Home Win'),
('2023-10-29', 'M00014', 'Away Win'),
('2023-11-14', 'M00015', 'Home Win'),
('2023-12-25', 'M00016', 'Away Win'),
('2023-12-11', 'M00017', 'Home Win'),
('2023-10-20', 'M00018', 'Away Win'),
('2023-12-23', 'M00019', 'Home Win'),
('2023-12-13', 'M00020', 'Away Win'),
('2023-11-06', 'M00021', 'Home Win'),
('2023-12-26', 'M00022', 'Away Win'),
('2023-11-17', 'M00023', 'Home Win'),
('2023-10-23', 'M00024', 'Away Win'),
('2023-11-10', 'M00025', 'Home Win'),
('2023-12-21', 'M00026', 'Away Win'),
('2023-10-28', 'M00027', 'Home Win'),
('2023-11-16', 'M00028', 'Away Win'),
('2023-12-08', 'M00029', 'Home Win'),
('2023-11-01', 'M00030', 'Away Win');

INSERT INTO COACH (CID, CFName, CLName, StartDate, EndDate, TID) VALUES
('C00001', 'Mike', 'Budenholzer', '2009-01-01', NULL, 'T00006'), 
('C00002', 'Brad', 'Stevens', '2006-01-01', '2020-06-30', 'T00001'), 
('C00003', 'Lionel', 'Hollins', '2005-01-01', '2010-06-30', 'T00002'), 
('C00004', 'Tony', 'Brown', '2012-01-01', NULL, 'T00003'), 
('C00005', 'Fred', 'Hoiberg', '2012-01-01', '2018-12-03', 'T00004'), 
('C00006', 'Steve', 'Clifford', '2007-01-01', NULL, 'T00005'),
('C00007', 'David', 'Blatt', '2015-01-01', '2016-01-22', 'T00007'),
('C00008', 'Tyronn', 'Lue', '2014-01-01', NULL, 'T00008'), 
('C00009', 'Rick', 'Carlisle', '2013-01-01', NULL, 'T00009'), 
('C00010', 'Mike', 'Malone', '2009-01-01', NULL, 'T00010'), 
('C00011', 'Stan', 'Van Gundy', '2013-01-01', '2021-05-21', 'T00011'), 
('C00012', 'Steve', 'Kerr', '2013-01-01', NULL, 'T00012'); 

INSERT INTO STADIUM (SName, Capacity, Location, HomeTeam) VALUES
('State Farm Arena', 15711, 'Atlanta', 'T00011'),
('Spectrum Center', 19077, 'Charlotte', 'T00012'),
('United Center', 20917, 'Chicago', 'T00006'),
('Barclays Center', 17732, 'New York City', 'T00002'),
('Fiserv Forum', 18717, 'Milwaukee', 'T00010'),
('Scotiabank Arena', 19800, 'Toronto', 'T00005'),
('Little Caesars Arena', 20491, 'Detroit', 'T00008'),
('Rocket Mortgage FieldHouse', 20562, 'Cleveland', 'T00007'),
('Wells Fargo Center', 21600, 'Philadelphia', 'T00004'),
('TD Garden', 18624, 'Boston', 'T00001'),
('Madison Square Garden', 19812, 'New York City', 'T00003'),
('Bankers Life Fieldhouse', 17923, 'Indianapolis', 'T00009');


INSERT INTO LEAGUE (LID, LName) VALUES
('L00015', 'NBA 2K League'),
('L00016', 'Basketball Africa League (BAL)'),
('L00017', 'Women''s National Basketball Association (WNBA)'),
('L00018', 'NBA G League'),
('L00019', 'NBA'),
('L00020', 'Continental Basketball League'),
('L00021', 'International Basketball League'),
('L00022', 'Drew League'),
('L00023', 'Maximum Basketball League'),
('L00024', 'Tobacco Road Basketball League'),
('L00025', 'Premier Basketball League');



INSERT INTO LEAGUE_PLAYED (TID, LID) VALUES
('T00001', 'L00018'), 
('T00002', 'L00016'), 
('T00003', 'L00019'), 
('T00004', 'L00020'),
('T00005', 'L00024'), 
('T00006', 'L00025'), 
('T00007', 'L00022'),
('T00008', 'L00017'), 
('T00009', 'L00017'), 
('T00010', 'L00019'), 
('T00011', 'L00023'), 
('T00012', 'L00015'), 
('T00001', 'L00016'), 
('T00002', 'L00025'),
('T00003', 'L00020'),
('T00004', 'L00018'), 
('T00006', 'L00021'), 
('T00007', 'L00023'), 
('T00008', 'L00019'), 
('T00009', 'L00022'), 
('T00010', 'L00017'), 
('T00011', 'L00015'), 
('T00012', 'L00016'),
('T00009','L00023');




INSERT INTO LEAGUE_YEAR_WON (YearWon, LID) VALUES
(2010, 'L00019'),
(2010, 'L00018'),
(2010, 'L00017'),
(2011, 'L00018'),
(2011, 'L00016'),
(2011, 'L00015'),
(2012, 'L00017'),
(2012, 'L00020'),
(2012, 'L00021'),
(2013, 'L00016'),
(2013, 'L00022'),
(2014, 'L00015'),
(2014, 'L00023'),
(2015, 'L00020'),
(2015, 'L00024'),
(2016, 'L00021'),
(2016, 'L00022'),
(2017, 'L00022'),
(2017, 'L00023'),
(2018, 'L00023'),
(2018, 'L00024'),
(2019, 'L00024'),
(2020, 'L00019'),
(2021, 'L00018'),
(2022, 'L00017'),
(2023, 'L00016'),
(2024, 'L00015');



INSERT INTO MATCH_PLAYED_BY (TID, MID) VALUES
('T00006', 'M00001'),
('T00002', 'M00001'),
('T00010', 'M00002'),
('T00005', 'M00002'),
('T00008', 'M00003'),
('T00011', 'M00003'),
('T00007', 'M00004'),
('T00004', 'M00004'),
('T00012', 'M00005'),
('T00001', 'M00005'),
('T00003', 'M00006'),
('T00009', 'M00006'),
('T00006', 'M00007'),
('T00002', 'M00007'),
('T00010', 'M00008'),
('T00005', 'M00008'),
('T00008', 'M00009'),
('T00011', 'M00009'),
('T00007', 'M00010'),
('T00004', 'M00010'),
('T00001', 'M00011'),
('T00003', 'M00011'),
('T00009', 'M00012'),
('T00006', 'M00012'),
('T00002', 'M00013'),
('T00010', 'M00013'),
('T00005', 'M00014'),
('T00008', 'M00014'),
('T00011', 'M00015'),
('T00007', 'M00015'),
('T00004', 'M00016'),
('T00001', 'M00016'),
('T00003', 'M00017'),
('T00009', 'M00017'),
('T00006', 'M00018'),
('T00002', 'M00018'),
('T00010', 'M00019'),
('T00005', 'M00019'),
('T00008', 'M00020'),
('T00011', 'M00020'),
('T00007', 'M00021'),
('T00004', 'M00021'),
('T00001', 'M00022'),
('T00003', 'M00022'),
('T00009', 'M00023'),
('T00006', 'M00023'),
('T00002', 'M00024'),
('T00010', 'M00024'),
('T00005', 'M00025'),
('T00008', 'M00025'),
('T00011', 'M00026'),
('T00007', 'M00026'),
('T00004', 'M00027'),
('T00001', 'M00027'),
('T00003', 'M00028'),
('T00009', 'M00028'),
('T00006', 'M00029'),
('T00002', 'M00029'),
('T00010', 'M00030'),
('T00005', 'M00030');

INSERT INTO PLAYED_AT (MID, SName) VALUES
('M00001', 'Barclays Center'),
('M00002', 'Fiserv Forum'),
('M00003', 'State Farm Arena'),
('M00004', 'Wells Fargo Center'),
('M00005', 'TD Garden'),
('M00006', 'Bankers Life Fieldhouse'),
('M00007', 'United Center'),
('M00008', 'Scotiabank Arena'),
('M00009', 'Little Caesars Arena'),
('M00010', 'Rocket Mortgage FieldHouse'),
('M00011', 'Madison Square Garden'),
('M00012', 'United Center'),
('M00013', 'Barclays Center'),
('M00014', 'Scotiabank Arena'),
('M00015', 'State Farm Arena'),
('M00016', 'Wells Fargo Center'),
('M00017', 'Bankers Life Fieldhouse'),
('M00018', 'Barclays Center'),
('M00019', 'Fiserv Forum'),
('M00020', 'Little Caesars Arena'),
('M00021', 'Rocket Mortgage FieldHouse'),
('M00022', 'TD Garden'),
('M00023', 'Bankers Life Fieldhouse'),
('M00024', 'Barclays Center'),
('M00025', 'Scotiabank Arena'),
('M00026', 'State Farm Arena'),
('M00027', 'TD Garden'),
('M00028', 'Madison Square Garden'),
('M00029', 'Barclays Center'),
('M00030', 'Fiserv Forum');


INSERT INTO PRACTICE_MATCH (Intensity, MID) VALUES
('High', 'M00001'),
('Medium', 'M00002'),
('Low', 'M00003'),
('High', 'M00004'),
('Medium', 'M00005'),
('High', 'M00006'),
('Medium', 'M00007'),
('Low', 'M00008'),
('High', 'M00009'),
('Medium', 'M00010'),
('High', 'M00011'),
('Medium', 'M00012'),
('Low', 'M00013'),
('High', 'M00014'),
('Medium', 'M00015');

INSERT INTO LEAGUE_MATCH (ViewersCount, MID) VALUES
(5000, 'M00016'),
(5600, 'M00017'),
(7000, 'M00018'),
(8050, 'M00019'),
(9000, 'M00020'),
(5500, 'M00021'),
(6500, 'M00022'),
(7500, 'M00023'),
(8500, 'M00024'),
(9500, 'M00025'),
(6000, 'M00026'),
(7000, 'M00027'),
(8000, 'M00028'),
(9000, 'M00029'),
(15000, 'M00030');

INSERT INTO PLAYER (PID, PFName, PLName, PDOB, PHeight, PWeight, PNationality, TID) VALUES
('P00001', 'Curly', 'Armstrong', '1918-01-01', 180, 77, 'USA', 'T00001'),
('P00002', 'Cliff', 'Barker', '1921-01-01', 188, 83, 'USA', 'T00002'),
('P00003', 'Leo', 'Barnhorst', '1924-01-01', 193, 86, 'USA', 'T00003'),
('P00004', 'Ed', 'Bartels', '1925-01-01', 196, 88, 'USA', 'T00004'),
('P00005', 'Ralph', 'Beard', '1927-01-01', 178, 79, 'USA', 'T00005'),
('P00006', 'Gene', 'Berce', '1926-01-01', 180, 79, 'USA', 'T00006'),
('P00007', 'Charlie', 'Black', '1921-01-01', 196, 90, 'USA', 'T00007'),
('P00008', 'Nelson', 'Bobb', '1924-01-01', 183, 77, 'USA', 'T00008'),
('P00009', 'Jake', 'Bornheimer', '1927-01-01', 196, 90, 'USA', 'T00009'),
('P00010', 'Vince', 'Boryla', '1927-01-01', 196, 95, 'USA', 'T00010'),
('P00011', 'Don', 'Boven', '1925-01-01', 193, 95, 'USA', 'T00011'),
('P00012', 'Harry', 'Boykoff', '1922-01-01', 208, 102, 'USA', 'T00012'),
('P00013', 'Tom', 'Brennan', '1928-01-01', 195, 85, 'USA', 'T00001'),
('P00014', 'Frank', 'Brian', '1923-01-01', 185, 81, 'USA', 'T00002'),
('P00015', 'Joe', 'Fulks', '1921-01-01', 198, 89, 'USA', 'T00002'),
('P00016', 'Bob', 'Kurland', '1924-01-01', 213, 107, 'USA', 'T00002'),
('P00017', 'Jim', 'Pollard', '1922-01-01', 190, 88, 'USA', 'T00005'),
('P00018', 'Dolph', 'Schayes', '1928-01-01', 203, 95, 'USA', 'T00006'),
('P00019', 'Andy', 'Phillip', '1922-01-01', 193, 88, 'USA', 'T00007'),
('P00020', 'Bobby', 'Wanzer', '1921-01-01', 183, 79, 'USA', 'T00008'),
('P00021', 'George', 'Yardley', '1928-01-01', 196, 88, 'USA', 'T00008'),
('P00022', 'Jim', 'Zeravich', '1924-01-01', 193, 88, 'USA', 'T00010'),
('P00023', 'Walter', 'Dukes', '1930-01-01', 212, 102, 'USA', 'T00011'),
('P00024', 'Johnny', 'Kerr', '1932-01-01', 201, 95, 'USA', 'T00001');


INSERT INTO STATS (StatsID, Assists, Rebound, FreeThrowsAttempts, FreeThrows, Fouls, TwoPointBasket, TwoPointAttempts, ThreePointBasket, ThreePointAttempts, Steals, Blocks, MinutesPlayed, PID, MID) 
VALUES
('S00003', 9, 12, 9, 5, 3, 7, 14, 4, 7, 3, 3, 45, 'P00003', 'M00006'),
('S00009', 13, 3, 2, 1, 3, 13, 26, 10, 13, 9, 9, 75, 'P00009', 'M00017'),
('S00005', 4, 8, 8, 7, 1, 9, 18, 6, 9, 5, 5, 55, 'P00005', 'M00030'),
('S00002', 4, 7, 8, 5, 1, 6, 12, 3, 6, 2, 2, 40, 'P00002', 'M00001'),
('S00010', 5, 8, 10, 3, 2, 14, 28, 11, 14, 10, 10, 80, 'P00010', 'M00002'),
('S00007', 6, 13, 4, 3, 2, 11, 22, 8, 11, 7, 7, 65, 'P00007', 'M00004'),
('S00004', 1, 4, 11, 1, 2, 8, 16, 5, 8, 4, 4, 50, 'P00004', 'M00027'),
('S00001', 8, 4, 15, 9, 2, 5, 10, 2, 5, 1, 1, 35, 'P00001', 'M00005'),
('S00008', 2, 14, 11, 10, 1, 12, 24, 9, 12, 8, 8, 70, 'P00008', 'M00003'),
('S00006', 15, 10, 5, 2, 0, 10, 20, 7, 10, 6, 6, 60, 'P00006', 'M00001'),
('S00011', 6, 9, 7, 4, 2, 10, 20, 6, 10, 6, 6, 55,'P00003', 'M00017'),
('S00012', 3, 6, 5, 3, 1, 7, 14, 3, 7, 4, 3, 40,'P00003', 'M00011'),
('S00013', 7, 11, 9, 6, 2, 12, 24, 8, 12, 7, 6, 65,'P00003', 'M00028'),
('S00014', 2, 5, 6, 2, 1, 6, 12, 2, 6, 3, 2, 35, 'P00009', 'M00006'),
('S00015', 9, 15, 10, 7, 3, 15, 30, 12, 15, 9, 7, 80,'P00009', 'M00012'),
('S00016', 4, 8, 8, 5, 1, 9, 18, 5, 9, 5, 4, 55, 'P00005', 'M00025'),
('S00017', 5, 10, 6, 4, 1, 8, 16, 4, 8, 6, 5, 50,'P00005', 'M00019'),
('S00018', 8, 13, 12, 8, 4, 14, 28, 10, 14, 8, 7, 75,'P00005', 'M00014'),
('S00019', 3, 7, 7, 3, 1, 5, 10, 3, 5, 2, 1, 35, 'P00002', 'M00007'),
('S00020', 10, 14, 13, 9, 3, 16, 32, 13, 16, 10, 8, 85, 'P00002', 'M00013'),
('S00021', 6, 12, 8, 6, 2, 11, 22, 7, 11, 6, 5, 60, 'P00002', 'M00024'),
('S00022', 1, 3, 4, 1, 1, 4, 8, 1, 4, 2, 1, 25, 'P00010', 'M00008'),
('S00023', 5, 9, 9, 4, 2, 10, 20, 5, 10, 5, 4, 50, 'P00010', 'M00030'),
('S00024', 7, 14, 11, 7, 3, 13, 26, 11, 13, 7, 6, 70, 'P00010', 'M00019'),
('S00025', 2, 6, 6, 3, 1, 6, 12, 3, 6, 3, 2, 40, 'P00007', 'M00010'),
('S00026', 9, 16, 15, 10, 4, 18, 36, 15, 18, 9, 8, 90, 'P00007', 'M00021'),
('S00027', 4, 10, 7, 5, 2, 10, 20, 6, 10, 4, 3, 55, 'P00004', 'M00016'),
('S00028', 6, 11, 9, 6, 2, 11, 22, 7, 11, 7, 5, 60, 'P00004', 'M00004'),
('S00029', 3, 5, 6, 3, 1, 5, 10, 3, 5, 3, 2, 35, 'P00001', 'M00001'),
('S00030', 8, 12, 11, 8, 3, 14, 28, 12, 14, 8, 7, 75, 'P00024', 'M00027');

INSERT INTO MENTORS (Mentor, Mentee) VALUES
('P00018', 'P00019'),
('P00003', 'P00004'),
('P00007', 'P00008'),
('P00009', 'P00010'),
('P00011', 'P00012'),
('P00001', 'P00002'),
('P00016', 'P00017'),
('P00005', 'P00006'),
('P00012', 'P00013'),
('P00004', 'P00005'),
('P00020', 'P00021'),
('P00006', 'P00007'),
('P00001', 'P00014'),
('P00002', 'P00003'),
('P00014', 'P00015');





