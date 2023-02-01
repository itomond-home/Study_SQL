DROP TABLE IF EXISTS test;

CREATE TABLE Test
  (ID INTEGER,
  Age INTEGER,
  Sex CHAR(8),
  Date DATE,
  Score INTEGER,
  Grade CHAR(8));

COPY test (ID, Age, Sex, Date, Score, Grade) 
  FROM 'C:\Users\Public\Documents\Study_SQL\0131\data.csv' WITH CSV HEADER;


SELECT avg(Age) FROM test GROUP BY sex;

SELECT score,
  CASE WHEN score BETWEEN 0  AND 49 THEN 'F'
       WHEN score BETWEEN 50 AND 59 THEN 'C'
       WHEN score BETWEEN 60 AND 69 THEN 'B'
       WHEN score BETWEEN 70 AND 79 THEN 'A'
       ELSE 'S' 
  END
   AS grade_new
FROM test;

-- COPY test 
--   TO 'C:\Users\Sakamaki\Desktop\test.csv' WITH CSV HEADER 
--   DELIMITER ',';