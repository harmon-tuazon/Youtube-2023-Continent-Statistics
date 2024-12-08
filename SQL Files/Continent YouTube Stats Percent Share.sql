--Created a CTE that allows me to access the total earnings of all continents per row
WITH earnings_table AS(
	SELECT 
	 continent,
	 total_earnings AS earnings_per_continent,
	 total_subs AS subs_per_continent,
	 total_uploads AS uploads_per_continent,
	 total_views AS views_per_continent,
	 total_num_youtubers AS youtubers_per_continent,
     SUM(total_earnings) OVER () AS total_earnings_all_continents,
	 SUM(total_subs) OVER () AS total_subs_all_continents,
	 SUM(total_uploads) OVER () AS total_uploads_all_continents,
     SUM(total_views) OVER () AS total_views_all_continents,
	 SUM(total_num_youtubers) OVER () AS total_youtubers_all_continents
	FROM "Youtube_Statistics_2023_Per_Continent"
	ORDER BY total_earnings DESC
)
--Now I will compute for the pct share of each continent per KPI
SELECT 
	continent,
	ROUND((earnings_per_continent/total_earnings_all_continents),4) AS pct_earnings_per_continent,
	ROUND((subs_per_continent/total_subs_all_continents),4) AS pct_subs_per_continent,
	ROUND((uploads_per_continent/total_uploads_all_continents),4) AS pct_uploads_per_continent,
	ROUND((views_per_continent/total_views_all_continents),4) AS pct_views_per_continent,
	ROUND((youtubers_per_continent/total_youtubers_all_continents),4) AS pct_youtubers_per_continent
	
FROM earnings_table
ORDER BY earnings_per_continent DESC;

/* Alternative Solution instead of CTE: 
ROUND(SUM(total_earnings) * 100.0 / (SUM(total_earnings) OVER (), 0)) AS pct_earnings with a Group By;

The use of Group By clause will allow me to sum total_earnings per continent, i.e. SUM(total_earnings) * 100.0,
and then divide that with total earnings of all continents, i.e. SUM(total_earnings) OVER ().
But this was not readable in my opinion. Hence I chose to use a CTE instead*/