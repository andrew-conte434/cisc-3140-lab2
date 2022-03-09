CREATE TABLE judges (
	ID INT,
	Name TEXT
);

INSERT INTO judges
SELECT Judge_ID, Judge_Name
FROM data;

