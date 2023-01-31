DROP TABLE IF EXISTS Iris;

CREATE TABLE Iris
  (sepal_length REAL,
  sepal_width REAL,
  petal_length REAL,
  petal_width REAL,
  variety varchar(10));

COPY Iris (sepal_length, sepal_width, petal_length, petal_width, variety) 
  FROM 'C:\Users\Public\Documents\Study_SQL\0131\iris.csv' WITH CSV HEADER;

SELECT avg(sepal_length),avg(sepal_width),avg(petal_length),avg(petal_width) FROM Iris GROUP BY variety;