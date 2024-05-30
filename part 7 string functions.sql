
-- upper()
SELECT UPPER("MAYuri daNDEKar") as Upper;

-- lower()
SELECT LOWER("MAYuri daNDEKar") as Lower;

-- length()
SELECT length("MAYURI DANDEKAR") AS LENGTH;

-- SUBSTRING (string_expression, start, length) -- 
SELECT SUBSTRING('Hello', 1, 4) as result;

-- current date and time --
select now() as date;

-- concat()
SELECT CONCAT('Hello', 'World') as result;

-- REPLACE(String to search,search for,replace with) --
SELECT REPLACE("string facts","facts","functions")
	as result;
    
-- trim
SELECT rtrim(" HELLO world... ") as result; -- right space --
-- SELECT ltrim(" HELLO world... ") as result; -- left space --