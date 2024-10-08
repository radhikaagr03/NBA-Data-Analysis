##SQL Queries based on the database schema for Sports Performance Analytics
##Submitted by Shreya, Radhika, Ayesha - Group Insights Squad

CREATE TABLE TEAM
(
  TID CHAR(6) NOT NULL,
  TName VARCHAR(25) NOT NULL,
  PRIMARY KEY (TID)
);

CREATE TABLE MATCH_NAME
(
  Date DATE NOT NULL, 
  MID CHAR(6) NOT NULL,
  Result CHAR(25), 
  PRIMARY KEY (MID)
);

CREATE TABLE COACH
(
  CID CHAR(6) NOT NULL,
  CFName VARCHAR(50) NOT NULL, 
  CLName VARCHAR(50) NOT NULL, 
  StartDate DATE NOT NULL, 
  EndDate DATE,
  TID CHAR(6),
  PRIMARY KEY (CID),
  FOREIGN KEY (TID) REFERENCES TEAM(TID) ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE STADIUM
(
  SName VARCHAR(50) NOT NULL, 
  Capacity INT,
  Location VARCHAR(100) NOT NULL, 
  HomeTeam CHAR(6),
  PRIMARY KEY (SName),
  FOREIGN KEY (HomeTeam) REFERENCES TEAM(TID) ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE LEAGUE
(
  LName VARCHAR(100) NOT NULL, 
  LID CHAR(10) NOT NULL,
  PRIMARY KEY (LID)
);

CREATE TABLE PLAYED_AT
(
  MID CHAR(6) NOT NULL,
  SName VARCHAR(50) NOT NULL,
  PRIMARY KEY (MID, SName),
  FOREIGN KEY (MID) REFERENCES MATCH_NAME(MID) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (SName) REFERENCES STADIUM(SName) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE LEAGUE_PLAYED
(
  TID CHAR(6) NOT NULL,
  LID CHAR(10) NOT NULL,
  PRIMARY KEY (TID, LID),
  FOREIGN KEY (TID) REFERENCES TEAM(TID) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (LID) REFERENCES LEAGUE(LID) ON DELETE RESTRICT ON UPDATE RESTRICT
);

CREATE TABLE LEAGUE_YEAR_WON
(
  YearWon YEAR NOT NULL, 
  LID CHAR(10) NOT NULL,
  PRIMARY KEY (YearWon, LID),
  FOREIGN KEY (LID) REFERENCES LEAGUE(LID) ON DELETE RESTRICT ON UPDATE RESTRICT
);

CREATE TABLE MATCH_PLAYED_BY
(
  TID CHAR(6) NOT NULL,
  MID CHAR(6) NOT NULL,
  PRIMARY KEY (TID, MID),
  FOREIGN KEY (TID) REFERENCES TEAM(TID) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (MID) REFERENCES MATCH_NAME(MID) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE PRACTICE_MATCH
(
  Intensity VARCHAR(50), 
  MID CHAR(6) NOT NULL,
  PRIMARY KEY (MID),
  FOREIGN KEY (MID) REFERENCES MATCH_NAME(MID) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE LEAGUE_MATCH
(
  ViewersCount INT NOT NULL,
  MID CHAR(6) NOT NULL,
  PRIMARY KEY (MID),
  FOREIGN KEY (MID) REFERENCES MATCH_NAME(MID) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE PLAYER
(
  PID CHAR(6) NOT NULL,
  PFName VARCHAR(50) NOT NULL, 
  PLName VARCHAR(50) NOT NULL, 
  PDOB DATE NOT NULL, 
  PHeight FLOAT NOT NULL,
  PWeight FLOAT NOT NULL,
  PNationality VARCHAR(50) NOT NULL, 
  TID CHAR(6) NOT NULL,
  PRIMARY KEY (PID),
  FOREIGN KEY (TID) REFERENCES TEAM(TID) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE STATS
(
  StatsID CHAR(6) NOT NULL,
  Assists INT NOT NULL,
  Rebound INT NOT NULL,
  FreeThrowsAttempts INT NOT NULL,
  FreeThrows INT NOT NULL,
  Fouls INT NOT NULL,
  TwoPointBasket INT NOT NULL,
  TwoPointAttempts INT NOT NULL,
  ThreePointBasket INT NOT NULL,
  ThreePointAttempts INT NOT NULL,
  Steals INT NOT NULL,
  Blocks INT NOT NULL,
  MinutesPlayed FLOAT NOT NULL,
  PID CHAR(6) NOT NULL,
  MID CHAR(6) NOT NULL,
  PRIMARY KEY (StatsID),
  FOREIGN KEY (PID) REFERENCES PLAYER(PID) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (MID) REFERENCES MATCH_NAME(MID) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE MENTORS
(
  Mentor CHAR(6) NOT NULL,
  Mentee CHAR(6) NOT NULL,
  PRIMARY KEY (Mentor, Mentee),
  FOREIGN KEY (Mentor) REFERENCES PLAYER(PID) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (Mentee) REFERENCES PLAYER(PID) ON DELETE CASCADE ON UPDATE CASCADE
);

-- FOREIGN KEY constraints in the COACH and STADIUM tables now include ON DELETE SET NULL ON UPDATE CASCADE, which means if a TEAM is deleted, the respective fields in COACH and STADIUM will be set to NULL, and if a TEAM's TID is updated, it will cascade to these tables.
-- FOREIGN KEY constraints on PLAYED_AT, LEAGUE_PLAYED, LEAGUE_YEAR_WON, MATCH_PLAYED_BY, PRACTICE_MATCH, LEAGUE_MATCH, PLAYER, STATS, and MENTORS are set to ON DELETE CASCADE ON UPDATE CASCADE, ensuring that deletions and updates of referenced entities will cascade through to dependent entities.
-- LEAGUE_PLAYED and LEAGUE_YEAR_WON have ON DELETE RESTRICT ON UPDATE RESTRICT to prevent deletion or updates that would leave orphan records.



