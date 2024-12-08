/* Created a CTE for exploratory statistics. This query allowed me to view the ranking of channel_types vis-a-vis KPIs 
like sales, views, and subscriber count. I have opted to use channel_types over category as it has fewer Distinct categories
(category = 19 vs channel_type = 14); better for data visualization later on */

WITH channel_type_ranking AS(
	SELECT 
		channel_type,
		ROUND(((SUM(highest_yearly_earnings) + SUM(lowest_yearly_earnings))/2), 0) AS total_earnings,
		SUM(subscribers) AS total_subscribers,
		SUM(video_views) AS total_views
	FROM "Global_YouTube_Statistics_2023"
	WHERE channel_type IS NOT Null 
	GROUP BY channel_type
	ORDER BY total_earnings DESC
)

/* Now that I know the aggregate statistics of each channel_type, I will now use the data from the CTE to compute 
their percent pay versus the total earnings of all channel types; the same for views and subscribers */

SELECT
	channel_type,
	total_earnings,
	ROUND(total_earnings * 100.0/ SUM(total_earnings) OVER (), 2) AS pct_earning_per_ct,
	total_subscribers,
	ROUND(total_subscribers * 100.0 / SUM(total_subscribers) OVER (), 2) AS pct_subscribers_per_ct,
	total_views,
	ROUND(total_views * 100.0 / SUM(total_views) OVER (), 2) AS pct_views_per_ct
FROM channel_type_ranking
