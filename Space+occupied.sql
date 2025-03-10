##Space occupied by each database

SELECT table_schema AS "Database",  SUM(data_length + index_length) / 1024 / 1024 AS "Size (MB)"  FROM information_schema.TABLES  GROUP BY table_schema;


##Total occupied space
SELECT  SUM(data_length + index_length) / 1024 / 1024 AS "Size (MB)"  FROM information_schema.TABLES ;