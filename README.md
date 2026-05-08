# 🏏 Cricket Match Analytics Using SQL

## 📌 Project Overview

This project analyzes cricket match and ball-by-ball data using SQL.
The dataset contains over 500,000 delivery records and match-level information.
The goal of this project is to extract meaningful insights about player performance, team success, strike rates, wickets, and overall match statistics.

---

# 🛠️ Tools & Technologies Used

* SQL
* MySQL Workbench
* Python (for JSON to CSV conversion)
* GitHub

---

# 📂 Dataset Information

The project uses two datasets:

## 1️⃣ matches table

Contains match-level details.

| Column Name |
| ----------- |
| match_id    |
| team1       |
| team2       |
| winner      |

---

## 2️⃣ deliveries table

Contains ball-by-ball information.

| Column Name |
| ----------- |
| match_id    |
| batsman     |
| bowler      |
| runs        |
| extras      |
| wicket      |

---

# 📊 SQL Analysis Performed

## ✅ 1. Team With Most Wins

Analyzed which team won the highest number of matches.

---

## ✅ 2. Top Run Scorers

Identified batsmen with the highest total runs.

---

## ✅ 3. Top Wicket Takers

Found bowlers with the most wickets.

---

## ✅ 4. Best Strike Rate

Calculated strike rate of batsmen using runs and balls faced.

---

## ✅ 5. Economy Analysis of Bowlers

Analyzed bowlers with best economy rates.

---

## ✅ 6. Most Runs in a Match

Found highest runs scored by a batsman in a single match.

---

## ✅ 7. Runs Scored in Winning Matches

Joined match and delivery tables to analyze batting performances in winning matches.

---

## ✅ 8. Match-wise Total Runs

Calculated total runs scored in every match.

---

# 🔥 SQL Concepts Used

* SELECT
* WHERE
* GROUP BY
* ORDER BY
* HAVING
* Aggregate Functions
* INNER JOIN
* LIMIT
* Aliases

---

# 📈 Key Insights

* Identified the most successful cricket teams.
* Found top-performing batsmen and bowlers.
* Analyzed strike rates and economy rates.
* Used JOIN operations for multi-table analysis.
* Performed large-scale SQL analysis on 500K+ records.

# 🏆 Conclusion

This project demonstrates practical SQL skills using real-world cricket datasets.
It showcases data analysis, joins, aggregations, filtering, and performance-based insights using MySQL.
