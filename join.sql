WITH cte as (
SELECT * FROM bike_yr0
UNION
SELECT * FROM bike_yr1)


SELECT dteday, season, yr, weekday, hr, rider_type, rider, price,cogs, 
rider*price AS revenue, 
rider*price - cogs AS profit 
FROM cte a
LEFT JOIN cost_table b
ON a.yr = b.year