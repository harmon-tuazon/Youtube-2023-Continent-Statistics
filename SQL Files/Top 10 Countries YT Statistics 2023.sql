-- Created a CTE for exploratory statistics. This query allowed me to view which countries are the top 10 vis-a-vis KPIs 
-- like sales, views, and subscriber count
WITH top_10_countries AS(
	SELECT 
		country,
		ROUND(((SUM(highest_yearly_earnings) + SUM(lowest_yearly_earnings))/2), 0) AS total_earnings,
		SUM(subscribers) AS total_subscribers,
		SUM(video_views) AS total_views
	FROM "Global_YouTube_Statistics_2023"
	WHERE country != 'Null'
	GROUP BY country
	ORDER BY total_earnings DESC
	LIMIT 10
)
-- Now that I know the top 10 countries, I will now use the data from the CTE to compute their percent pay versus the total 
-- earnings of the top 10; the same for views and subscribers

SELECT 
	country, 
	total_earnings,
	ROUND(total_earnings * 100.0/ SUM(total_earnings) OVER (), 2) AS pct_earning_per_country,
	total_subscribers,
	ROUND(total_subscribers * 100.0 / SUM(total_subscribers) OVER (), 2) AS pct_subscribers_per_country,
	total_views,
	ROUND(total_views * 100.0 / SUM(total_views) OVER (), 2) AS pct_views_per_country
FROM top_10_countries
