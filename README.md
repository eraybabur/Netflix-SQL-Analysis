# Netflix-SQL-Analysis

Tools: SQL (SQLite), DB Browser

SQL analysis of the Netflix dataset to explore content distribution and trends
Analyzing the Netflix content dataset using SQL to understand the platform’s catalog structure.
The analysis explores content types, production countries, release trends, and genre distribution.

Add dataset overview and data quality checks

# Data Quality Checks

Initial checks were performed to understand the dataset structure and quality.
Duplicate records were checked using `show_id` and missing values were examined in key columns such as `director`, `cast`, and `country`.

## Exploratory Analysis

- The dataset is explored using SQL to answer key questions about the Netflix catalog, such as content types, production countries, genres, and content trends
- Content Type Distribution: Movies dominate the platform compared to TV Shows.
- Top Countries: The United States produces the highest number of titles.
- Content Added Over Time: Most content was added in recent years, showing rapid platform growth.
- Most Common Genres: Drama and documentary-related categories are the most frequent.
- Rating Distribution: Most content is rated TV-MA and TV-14, targeting mature audiences.
- Longest Movies: Some titles exceed 300 minutes, indicating special or extended formats.
- Release Year Trends: Content production peaked around 2018–2019.
- Top Directors: A few directors appear multiple times, though some entries include multiple names in one field.

### Key Findings

- Movies dominate the platform compared to TV Shows.
- The United States has the highest number of titles.
- Content additions increased significantly in recent years.
- Drama and documentary-related genres are the most common.
- Most content is rated TV-MA and TV-14, targeting mature audiences.
- Some movies exceed 300 minutes, indicating special formats.
- Content production peaked around 2018–2019.
- A small number of directors appear frequently, though some records include multiple directors.
