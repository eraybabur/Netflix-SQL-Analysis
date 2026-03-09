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
