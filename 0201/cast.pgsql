
SELECT 42/9 AS div;
SELECT CAST(42/9 AS float8) AS div;
SELECT CAST(42 AS float8) /9 AS div;

DROP TABLE IF EXISTS date001;

CREATE TABLE date001
  (year VARCHAR,
  month VARCHAR,
  day VARCHAR);
INSERT INTO date001 VALUES('2023', '01', '31');

SELECT CAST(year||month||day as date) as D FROM date001;