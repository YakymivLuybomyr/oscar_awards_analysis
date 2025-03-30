-- 1. Top 3 directors by wins
SELECT 
  name AS director_name,
  COUNT(*) AS oscar_wins
FROM valiant-song-449115-h0.12345.Oscar
WHERE category LIKE '%DIRECTING%' 
AND winner = TRUE
GROUP BY  name
ORDER BY oscar_wins DESC
LIMIT 3;


-- 2. Which actors and actresses have had the most Oscar nominations but still haven't won a single one (top 3)
WITH winner AS
(SELECT
name
FROM valiant-song-449115-h0.12345.Oscar
WHERE winner is true
AND(category LIKE 'ACTOR%' OR category LIKE 'ACTRESS%')
GROUP BY name)

  SELECT
name 
,COUNT(winner) AS count_nominations
FROM valiant-song-449115-h0.12345.Oscar
WHERE (category LIKE 'ACTOR%' OR category LIKE 'ACTRESS%')
AND name NOT IN (SELECT name FROM winner)
GROUP BY name 
ORDER BY count_nominations DESC 
LIMIT 3


  
-- 3. Years without ceremonies
WITH all_years AS (
  SELECT DISTINCT year_ceremony FROM  valiant-song-449115-h0.12345.Oscar
),
expected_years AS (
  SELECT MIN(year_ceremony) AS start_year, 
         MAX(year_ceremony) AS end_year 
  FROM  valiant-song-449115-h0.12345.Oscar
)
SELECT 
  year AS missing_year
FROM 
  (SELECT generate_series(start_year, end_year) AS year 
   FROM expected_years) years
WHERE year NOT IN (SELECT year_ceremony FROM all_years);



-- 4. Who has been nominated most often among women and men in acting?
WITH ACTOR AS
(SELECT
NAME
,COUNT(year_ceremony) AS NOMINATIONS
from valiant-song-449115-h0.12345.Oscar
WHERE category LIKE 'ACTOR%'
AND winner IS false
GROUP BY NAME
ORDER BY NOMINATIONS DESC LIMIT 1),

ACTRESS AS 
(SELECT
NAME
,COUNT(year_ceremony) AS NOMINATIONS
from valiant-song-449115-h0.12345.Oscar
WHERE category LIKE 'ACTRESS%'
AND winner IS false
GROUP BY NAME
ORDER BY NOMINATIONS DESC LIMIT 1
)

SELECT * FROM ACTOR
UNION ALL
SELECT * FROM ACTRESS


  
-- 5. Which actor or actress waited the longest from their first nomination to winning an Oscar?
WITH FIRST_APPEARANCE AS
(SELECT
NAME
,MIN(year_ceremony) as first_appearance
from valiant-song-449115-h0.12345.Oscar
where (category LIKE 'ACTOR%' OR category LIKE 'ACTRESS%')
AND winner IS false
GROUP BY NAME),

FIRST_OSCAR AS
(SELECT
NAME
,MIN(year_ceremony) as first_oscar
from valiant-song-449115-h0.12345.Oscar
where (category LIKE 'ACTOR%' OR category LIKE 'ACTRESS%')
AND winner IS true
GROUP BY NAME)

SELECT 
FIRST_APPEARANCE.name
, FIRST_OSCAR.first_oscar - FIRST_APPEARANCE.first_appearance AS diff_years
FROM FIRST_APPEARANCE
JOIN FIRST_OSCAR ON FIRST_OSCAR.name = FIRST_APPEARANCE.name
ORDER BY diff_years DESC
LIMIT 1
