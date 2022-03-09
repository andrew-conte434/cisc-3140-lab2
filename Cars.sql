
CREATE TABLE cars(
	ID INT PRIMARY KEY,
	Year INT,
	Make TEXT,
	Model TEXT,
	Owner_Name TEXT,
	Owner_Email TEXT
);

INSERT INTO cars
SELECT Car_ID, Year, Make, Model, Name, Email 
FROM data;

