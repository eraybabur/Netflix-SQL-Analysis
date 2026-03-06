SELECT * FROM netflix_titles
 LIMIT 10;
 SELECT count(*) FROM netflix_titles;

-- Check for duplicate records using show_id --

SELECT count(*) - count(distinct show_id); 
FROM netflix_titles;

 