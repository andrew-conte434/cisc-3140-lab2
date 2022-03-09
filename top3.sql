.output extract2.csv
.mode csv
.headers on

SELECT * FROM (
	SELECT Car_ID, Year, Make, Model, Car_Score,
	ROW_NUMBER() OVER (PARTITION BY Make ORDER BY Car_Score DESC) AS subrank
	FROM ranked
)
WHERE subrank<=3
