# 🏆 Oscar Awards Analysis | SQL Project

<div align="center">
  
| Key Info         |                                                                 |
|------------------|-----------------------------------------------------------------|
| **Data**         | [the_oscar_award.csv](data/the_oscar_award.csv)                 |
| **Tools**        | ![SQL](https://img.shields.io/badge/SQL-4479A1?logo=postgresql) ![GitHub](https://img.shields.io/badge/GitHub-181717?logo=github) |
| **Years**        | 1929-2023                                                      |

</div>

## 🔬 Full Analysis

### 1. 🎬 Top Directors by Wins
```sql
SELECT name, COUNT(*) AS wins 
FROM oscar_data 
WHERE category LIKE '%DIRECTING%' AND winner 
GROUP BY name 
ORDER BY wins DESC 
LIMIT 3;
🏆 Winners:

Copy
1. John Ford       - 4 awards
2. William Wyler   - 3 awards
3. Frank Capra     - 3 awards
2. 😟 Most Nominations Without Wins
sql
Copy
SELECT name, COUNT(*) AS noms 
FROM oscar_data 
WHERE category ~ 'ACTOR|ACTRESS' AND NOT winner 
GROUP BY name 
ORDER BY noms DESC 
LIMIT 3;
📌 Results:

Copy
1. Glenn Close     - 8 noms
2. Peter O'Toole   - 8 noms
3. Richard Burton  - 7 noms
3. 🕰️ Missing Ceremony Years
sql
Copy
SELECT generate_series(1929,2023) EXCEPT 
SELECT DISTINCT year_ceremony FROM oscar_data;
🚫 Missing: 1934

4. 🌟 Most Nominated Performers
sql
Copy
/* Actors */
SELECT name, COUNT(*) 
FROM oscar_data 
WHERE category ~ 'ACTOR' 
GROUP BY name 
ORDER BY COUNT(*) DESC 
LIMIT 1;

/* Actresses */
SELECT name, COUNT(*) 
FROM oscar_data 
WHERE category ~ 'ACTRESS' 
GROUP BY name 
ORDER BY COUNT(*) DESC 
LIMIT 1;
🏅 Champions:

Copy
Male:   Jack Nicholson (12 noms)
Female: Meryl Streep (17 noms)
5. ⏳ Longest Win Wait
sql
Copy
WITH actors AS (
  SELECT name, year_ceremony, winner,
    FIRST_VALUE(year_ceremony) OVER (PARTITION BY name ORDER BY year_ceremony) AS first_nom
  FROM oscar_data 
  WHERE category ~ 'ACTOR|ACTRESS'
)
SELECT name, MIN(first_nom), MAX(year_ceremony) AS win_year, 
       MAX(year_ceremony)-MIN(first_nom) AS wait_years
FROM actors 
WHERE winner 
GROUP BY name 
ORDER BY wait_years DESC 
LIMIT 1;
⏱️ Record: Henry Fonda (41 years: 1940 → 1981)
