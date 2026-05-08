-- CRICKET-SQL-PROJECTS
-- 1. Exploring Data
SELECT *
FROM matches
LIMIT 10

SELECT *
FROM deliveries
LIMIT 20

-- 2. TEAM with most wins
SELECT winner, COUNT(*) as Wins
FROM matches
GROUP BY winner
ORDER BY Wins DESC

-- 3. TOP Run Scorers
SELECT batsman, SUM(runs) AS Runs
FROM deliveries
GROUP BY batsman 
ORDER BY Runs DESC
LIMIT 10

-- 4. TOP Wicket Takers
SELECT bowler, SUM(wicket) AS Wickets
FROM deliveries
GROUP BY bowler
ORDER BY Wickets DESC
LIMIT 10

-- 5. Best Strike Rate
SELECT batsman, SUM(runs) AS total_runs, COUNT(*) AS total_balls,
ROUND(SUM(runs)*100/COUNT(*),2) AS strike_rate
FROM deliveries
GROUP BY batsman
HAVING total_runs >100
ORDER BY strike_rate DESC
LIMIT 50

-- 6. Economy Analysis of bowlers
SELECT bowler, SUM(wicket) AS total_wickets,
SUM(runs+extras) AS runs_given, ROUND(COUNT(*)/6,2) AS overs,
ROUND(SUM(runs+extras)/(COUNT(*)/6),2) AS economy
FROM deliveries
GROUP BY bowler
HAVING overs > 10 AND total_wickets > 50
ORDER BY economy ASC
LIMIT 50

-- 7. Most Runs in Match
SELECT batsman,match_id,SUM(runs) AS match_runs
FROM deliveries
GROUP BY batsman, match_id
ORDER BY match_runs DESC
LIMIT 10

-- 8. Runs Scored in Winning Matches
SELECT D.batsman, M.winner,SUM(D.runs) AS total_runs 
FROM matches AS M
JOIN deliveries AS D
ON M.match_id=D.match_id
GROUP BY D.batsman, M.winner
ORDER BY total_runs DESC
LIMIT 20

-- 9. Match-wise Total Runs
SELECT M.match_id, M.team1, M.team2, SUM(D.runs+D.extras) AS total_runs_recorded
FROM matches AS M
JOIN deliveries AS D
ON M.match_id=D.match_id
GROUP BY M.match_id,M.team1, M.team2
ORDER BY total_runs_recorded DESC
LIMIT 10    