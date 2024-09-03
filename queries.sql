##SQL Queries based on the database schema for Sports Performance Analytics
##Submitted by Shreya, Radhika, Ayesha - Group Insights Squad


#Query 1: Calulating the Stats per Player
#This query calculates the average stats per player in all matches they've played, along with the total number of 
#matches they've participated in.

SELECT 
  p.PID,
  p.PFName,
  p.PLName,
  COUNT(mpb.MID) AS NumberOfMatches,
  AVG(s.Assists) AS AvgAssists,
  AVG(s.Rebound) AS AvgRebounds,
  AVG(s.FreeThrowsAttempts) AS AvgFreeThrowsAttempts,
  AVG(s.FreeThrows) AS AvgFreeThrows,
  AVG(s.Fouls) AS AvgFouls,
  AVG(s.TwoPointBasket) AS AvgTwoPointBaskets,
  AVG(s.ThreePointBasket) AS AvgThreePointBaskets,
  AVG(s.Steals) AS AvgSteals,
  AVG(s.Blocks) AS AvgBlocks,
  AVG(s.MinutesPlayed) AS AvgMinutesPlayed
FROM 
  PLAYER p
JOIN 
  STATS s ON p.PID = s.PID
JOIN 
  MATCH_PLAYED_BY mpb ON s.MID = mpb.MID
GROUP BY 
  p.PID, p.PFName, p.PLName;
  
#Query 2: Team with most leagues won.
#Finds teams with the most league championships won, using INNER JOIN for mapping teams to league wins.
SELECT 
  t.TName as TeamName,
  COUNT(*) AS LeaguesWon
FROM 
  TEAM t
JOIN 
  LEAGUE_PLAYED lp ON t.TID = lp.TID
JOIN 
  LEAGUE_YEAR_WON lyw ON lp.LID = lyw.LID
GROUP BY 
  t.TName
ORDER BY 
  LeaguesWon DESC
LIMIT 1;

#Query 3: Coaches with Longest Tenure
#This query utilizes DATEDIFF to find the coaches with the longest tenure, showcasing the use of date functions.

SELECT 
  c.CFName as FirstName,
  c.CLName as LastName,
  t.TName AS TeamName,
  FLOOR(DATEDIFF(IFNULL(c.EndDate, CURDATE()), c.StartDate) / 365) AS NumberOfYearsCoached
FROM 
  COACH c
JOIN 
  TEAM t ON c.TID = t.TID
GROUP BY 
  c.CID, c.CFName, c.CLName, t.TName
ORDER BY 
  NumberOfYearsCoached DESC;
  

#Query 4:Top 5 Matches with Most Fouls
#This query uses an aggregate function with a GROUP BY clause to find matches with the highest total number of fouls.
#This query provides a list of the matches with the highest number of fouls, including which team committed those fouls, sorted by the number of fouls descending.

SELECT 
  mn.Date,
  mn.MID,
  t.TName AS TeamName,
  SUM(s.Fouls) AS TotalFouls
FROM 
  MATCH_NAME mn
JOIN 
  STATS s ON mn.MID = s.MID
JOIN 
  MATCH_PLAYED_BY mpb ON mn.MID = mpb.MID
JOIN 
  TEAM t ON mpb.TID = t.TID
GROUP BY 
  mn.Date, mn.MID, t.TName
ORDER BY 
  TotalFouls DESC
LIMIT 5;

#Query 5:Top 5 players with the highest average assists per match
#This query will ensure that you retrieve the players who, on average, assist the most per match, based on the matches they have participated in and where stats were recorded.
SELECT 
  #p.PID,
  p.PFName as FirstName,
  p.PLName as LastName,
  COUNT(mpb.MID) AS NumberOfMatches,
  AVG(s.Assists) AS AvgAssists
FROM 
  PLAYER p
JOIN 
  STATS s ON p.PID = s.PID
JOIN 
  MATCH_PLAYED_BY mpb ON s.MID = mpb.MID
GROUP BY 
  p.PID, p.PFName, p.PLName
ORDER BY 
  AVG(s.Assists) DESC
LIMIT 5;

#Query 6:Players who have mentored other players and their mentees

SELECT 
  #mentor.PID AS MentorID,
  CONCAT(mentor.PFName, ' ', mentor.PLName) AS Mentor,
  #mentee.PID AS MenteeID,
  CONCAT(mentee.PFName, ' ', mentee.PLName) AS Mentee
FROM 
  PLAYER mentor
JOIN 
  MENTORS m ON mentor.PID = m.Mentor
JOIN 
  PLAYER mentee ON m.Mentee = mentee.PID;
 
#Query 7:Total number of matches won and lost by each team.
  
SELECT 
  t.TName,
  COUNT(CASE WHEN (mn.Result = 'Home Win' AND st.HomeTeam = t.TID) 
  OR (mn.Result = 'Away Win' AND st.HomeTeam != t.TID) THEN 1 END) AS MatchesWon,
  COUNT(CASE WHEN (mn.Result = 'Home Win' AND st.HomeTeam != t.TID) 
  OR (mn.Result = 'Away Win' AND st.HomeTeam = t.TID) THEN 1 END) AS MatchesLost
FROM 
  MATCH_NAME mn
JOIN 
  MATCH_PLAYED_BY mpb ON mn.MID = mpb.MID
JOIN 
  TEAM t ON mpb.TID = t.TID
JOIN 
  PLAYED_AT pa ON mn.MID = pa.MID
JOIN 
  STADIUM st ON pa.SName = st.SName
GROUP BY 
  t.TName;


#Query 8: List All Matches Played at a Specific Stadium
SELECT 
  mn.Date,
  mn.MID,
  mn.Result,
  s.SName AS StadiumName
FROM 
  MATCH_NAME mn
INNER JOIN 
  PLAYED_AT pa ON mn.MID = pa.MID
INNER JOIN 
  STADIUM s ON pa.SName = s.SName
WHERE 
  s.SName = 'TD Garden';
  
#Query 9: To get the Viewer Counts by League using the aggregate function
SELECT 
  l.LName,
  SUM(lm.ViewersCount) AS TotalViewers
FROM 
  LEAGUE l
INNER JOIN 
  LEAGUE_PLAYED lp ON l.LID = lp.LID
INNER JOIN 
  MATCH_PLAYED_BY mpb ON lp.TID = mpb.TID
INNER JOIN 
  LEAGUE_MATCH lm ON mpb.MID = lm.MID
GROUP BY 
  l.LName 
ORDER BY 
  TotalViewers DESC;

#Query 10: All Teams and Their Home Stadiums
SELECT 
  t.TName,
  s.SName AS StadiumName
FROM 
  TEAM t
LEFT OUTER JOIN 
  STADIUM s ON t.TID = s.HomeTeam;







 
  
  






