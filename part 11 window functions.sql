CREATE TABLE salesperson
(entityID INT, salesYTD INT);
INSERT INTO salesperson VALUES
(267,559697),(267,3763180),(269,4251370),(270,3189420);

-- lead
SELECT entityID, salesYTD,
LEAD(salesYTD, 1, 0) OVER(ORDER BY entityID) AS "Lead value"
FROM salesperson;

-- lag
SELECT entityID, salesYTD,
LAG(salesYTD, 1, 0) OVER(ORDER BY entityID) AS "Lag value"
FROM salesperson;

-- first value
SELECT entityID, salesYTD, 
FIRST_VALUE(entityID)
OVER(ORDER BY salesYTD ASC) AS FirstValue
FROM salesperson;


set sql_safe_updates=0;
UPDATE salesperson
SET entityID = 267
WHERE entityId = 268;

-- last value
SELECT entityID, salesYTD, 
LAST_VALUE(salesYTD)
OVER(ORDER BY entityID ) AS LastValue
FROM salesperson;

-- percent rank
SELECT entityID, salesYTD,
PERCENT_RANK() OVER(ORDER BY entityID) AS "PERCENT_RANK"
FROM salesperson;

-- dense rank
SELECT entityID, salesYTD,
DENSE_RANK() OVER(ORDER BY entityID) AS "DENSE_RANK"
FROM salesperson;

-- rank
SELECT entityID, salesYTD,
RANK() OVER(ORDER BY entityID) AS "RANK"
FROM salesperson;

-- row number
SELECT entityID, salesYTD,
ROW_NUMBER() OVER(ORDER BY entityID) AS "ROW_NUMBER"
FROM salesperson;

-- sum
SELECT entityID, salesYTD,
SUM(salesYTD) OVER( PARTITION BY entityID ORDER BY entityID ) AS "Total"
FROM salesperson;

-- avg
SELECT entityID, salesYTD,
AVG(salesYTD) OVER( PARTITION BY entityID ORDER BY entityID ) AS "Average"
FROM salesperson;

-- count
SELECT entityID, salesYTD,
COUNT(salesYTD) OVER( PARTITION BY entityID ORDER BY entityID ) AS "Count"
FROM salesperson;

-- min
SELECT entityID, salesYTD,
MIN(salesYTD) OVER( PARTITION BY entityID ORDER BY entityID ) AS "Min"
FROM salesperson;

-- max
SELECT entityID, salesYTD,
MAX(salesYTD) OVER( PARTITION BY entityID ORDER BY entityID ) AS "Max"
FROM salesperson;