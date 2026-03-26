SELECT * FROM netflix_titles
 LIMIT 10;
 SELECT count(*) FROM netflix_titles;

-- Check for duplicate records using show_id --

SELECT count(*) - count(distinct show_id); 
FROM netflix_titles;

-- Count how many Movies and TV Shows are in the dataset
 SELECT type, count(*) as total_titles
from netflix_titles
group by type;

-- Result:
-- Movies: 6131
-- TV Shows: 2676

-- Check missing values in important columns
SELECT count(*) - count(director) as missing_directors,
count(*) - count("cast") as  missing_cast,
count(*) - count(country) as missing_countries
FROM netflix_titles


 
Content added to Netflix by year
-- Extract year from 'date_added' and count how many titles were added each year
SELECT substr(date_added, -4) AS added_year,
COUNT(*) AS total_titles
FROM netflix_titles
WHERE date_added IS NOT NULL
GROUP BY added_year
ORDER BY added_year;

Most common genres
-- Count how many titles belong to each genre combination
SELECT listed_in, count(*) as total_titles FROM netflix_titles
WHERE listed_in is not NULL 
GROUP by listed_in
ORDER by total_titles DESC
LIMIT 10;

Rating distribution
-- Analyze how content is distributed across different rating categories
SELECT rating, count(*) as total_titles
FROM netflix_titles
where rating is not NULL 
GROUP by rating
ORDER by total_titles DESC
LIMIT 10;

-Longest movies on Netflix
-- Extract numeric duration (minutes) and find the longest movies
SELECT title,
cast( substr(duration, 1, length(duration) - 4) AS  INTEGER) as duration_minutes
FROM netflix_titles
WHERE type = 'Movie'
AND duration IS NOT NULL
ORDER BY duration_minutes DESC
LIMIT 10;

Content distribution by release year
-- Count how many titles were released each year
SELECT release_year, count(*) as total_titles
FROM netflix_titles
GROUP by release_year
ORDER by total_titles DESC
LIMIT 10;

Top directors
-- Identify directors with the highest number of titles on Netflix
SELECT director, count(*) as total_titles
FROM netflix_titles
WHERE director is not NULL
GROUP by director
order by total_titles DESC
LIMIT 10;
