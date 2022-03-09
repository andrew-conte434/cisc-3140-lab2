.output extract1.csv
.mode csv
.headers on

SELECT RANK() OVER(ORDER BY scores.Car_Score DESC) AS rank, 
	scores.Car_ID,
	cars.Year,
	cars.Make,
	cars.Model,
	scores.Car_Score
FROM car_scores scores
JOIN cars cars
ON scores.Car_ID = cars.ID
