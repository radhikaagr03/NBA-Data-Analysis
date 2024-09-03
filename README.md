# NBA Data Analysis Project

## Project Overview

This NBA Data Analysis project aims to provide a comprehensive understanding of various aspects of NBA games, teams, and player performance through structured data analysis using SQL. The project is divided into three main components:

1. **Database Schema Design**: 
   - We designed a relational database schema to effectively store NBA data. The schema includes tables for players, teams, games, and statistics, ensuring that the data is organized and normalized to avoid redundancy and maintain data integrity.
   
2. **Data Ingestion**:
   - Using the `insert.sql` script, we populated the database with real or simulated NBA data, including player stats, game results, and team information. This step was crucial to enable detailed analysis and to ensure the database had sufficient and relevant data for the queries.

3. **Data Analysis**:
   - The core of the project involved running various SQL queries from the `queries.sql` file to extract insights from the data. Some of the key analyses performed include:
     - **Player Performance Analysis**: Identifying top performers based on scoring, assists, rebounds, and other key metrics.
     - **Team Analysis**: Comparing teams based on win-loss records, average points per game, and other performance indicators.
     - **Trend Analysis**: Examining trends over time, such as changes in player performance across seasons or game-to-game variations.

By creating this structured and systematic approach to analyzing NBA data, the project provides a foundation for deeper insights into player and team dynamics, helping stakeholders make data-driven decisions.

## ER Diagram 

### Entity-Relationship Diagram (ERD)

An Entity-Relationship Diagram (ERD) is a visual representation of the database structure that illustrates the relationships between various entities within the database. In this project, the ERD was crucial for designing the schema of our NBA database, ensuring that all relevant data points are captured accurately and efficiently.

### Key Components of the ER Diagram

1. **Entities**:
   - **Players**: Represents individual players, including attributes such as player ID, name, position, team, and statistics.
   - **Teams**: Represents NBA teams with attributes like team ID, team name, location, and coach.
   - **Games**: Captures game-specific data including game ID, date, participating teams, and final scores.
   - **Statistics**: Represents performance data for players in each game, including points scored, assists, rebounds, and other metrics.

2. **Relationships**:
   - **Team-Player Relationship**: Each player is associated with a team, and each team can have multiple players. This is represented by a one-to-many relationship between Teams and Players.
   - **Game-Team Relationship**: Each game involves two teams, represented by a many-to-many relationship between Games and Teams. This relationship is resolved through an associative entity (e.g., GameTeams).
   - **Player-Statistics Relationship**: A player’s performance in each game is tracked, represented by a one-to-many relationship between Players and Statistics.
   - **Game-Statistics Relationship**: Each game has multiple statistics entries, one for each player’s performance, which is captured through a one-to-many relationship between Games and Statistics.

### Purpose of the ER Diagram

The ERD serves as a blueprint for the database, allowing us to:
- **Visualize Data Relationships**: Clearly see how entities interact with each other, ensuring that the database design supports the intended data queries and analysis.
- **Optimize Data Structure**: Identify opportunities to normalize data, reduce redundancy, and ensure data integrity across the database.
- **Facilitate Query Design**: Provide a reference for creating complex SQL queries by understanding how data is linked across different tables.

## Files Included

- **create.sql**: This file contains SQL scripts to create the necessary tables for storing NBA data.
- **insert.sql**: This file includes SQL commands to populate the tables with relevant NBA data.
- **queries.sql**: This file contains various SQL queries used to analyze the data, such as player performance metrics, team statistics, and game outcomes.

## Project Features

- **Database Creation**: The project sets up a relational database structure for NBA data, including tables for players, teams, games, and statistics.
- **Data Insertion**: Populates the database with NBA data to facilitate analysis.
- **Data Analysis**: Executes SQL queries to derive insights, such as top player performances, team comparisons, and historical trends.

## Key Insights

- Analysis of player statistics to identify top performers.
- Team performance metrics and comparisons.
- Trends and patterns in game outcomes.



