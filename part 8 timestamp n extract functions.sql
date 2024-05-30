-- timestamp
SHOW TIMEZONE

SELECT now()

SELECT TIMEOFDAY()

 SELECT CURRENT_TIME
 
 SELECT CURRENT_DATE
 
CREATE TABLE `date` (
  `date` date NOT NULL,
  `cy_date` date ,
  `year` int,
  `month_name` varchar(45),
  `date_yy_mmm` varchar(45) 
) ;
INSERT INTO `date` VALUES
('2017-06-01', '2017-06-01', 2017, 'june','17-june'),
('2017-06-02', '2017-06-01', 2017, 'june','17-june'),
('2017-06-03', '2017-06-01', 2017, 'june','17-june'),
('2017-06-04', '2017-06-01', 2017, 'june','17-june'),
('2017-06-05', '2017-06-01', 2017, 'june','17-june');

-- extract functions
SELECT EXTRACT(MONTH FROM date) as month, date
 FROM date;
 
SELECT EXTRACT(YEAR FROM date) as year, date
 FROM date;
 
SELECT EXTRACT(day FROM date) as day, date
 FROM date;
 
SELECT EXTRACT(QUARTER FROM date) as qtr, date
 FROM date;