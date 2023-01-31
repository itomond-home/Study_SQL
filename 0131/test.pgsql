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

-- COPY test 
--   TO 'C:\Users\Sakamaki\Desktop\test.csv' WITH CSV HEADER 
--   DELIMITER ',';