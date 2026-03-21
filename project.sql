create database Project_Database;
use Project_Database;

CREATE TABLE projects (
id	int DEFAULT NULL,
state	text,
name	text,
country	text,
creator_id	int DEFAULT NULL,
location_id	int DEFAULT NULL,
category_id	int DEFAULT NULL,
created_at date DEFAULT NULL,
deadline	date DEFAULT NULL,
updated_at	date DEFAULT NULL,
state_changed_at date DEFAULT NULL,	
successful_at	date DEFAULT NULL,
launched_at	date DEFAULT NULL,
goal int DEFAULT NULL,
static_usd_rate	int DEFAULT NULL,
Goal_Amount_USD int DEFAULT NULL,
goal_range	text,
pledged	int DEFAULT NULL,
currency text,
currency_symbol	text,
usd_pledged	int DEFAULT NULL,
No_of_days_for_completion	int DEFAULT NULL,
backers_count int DEFAULT NULL
) ;

SET NAMES utf8mb4;


LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\main.csv'
INTO TABLE projects
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;


select * from projects;

CREATE TABLE calender (
created_date date	DEFAULT NULL,
ID int DEFAULT NULL,
Year int DEFAULT NULL,
Month int DEFAULT NULL,
Month_Name text,
Quarter	text,
YearMonth	text,
Weekday	int DEFAULT NULL,
Weekday_Name text,
Financial_Month	text,
Financial_Quarter text
) ;

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\calender.csv'
INTO TABLE calender
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

select * from calender;

CREATE TABLE location (
location_id	int DEFAULT NULL,
displayable_name text,	
type text,
location_name text,	
location_state text,	
short_name	text,
is_root	text,
country text
) ;

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\location.csv'
INTO TABLE location
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

select * from location;

CREATE TABLE category (
category_id	int DEFAULT NULL,
category_name	text,
parent_id	int DEFAULT NULL,
position int DEFAULT NULL
) ;

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\category.csv'
INTO TABLE category
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

select * from category;

CREATE TABLE creator (
creator_id	bigint DEFAULT NULL,
creator_name text
) ;

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\creator.csv'
INTO TABLE creator
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

select * from creator;

#KPI-1
#Total Number of Projects based on outcome 
SELECT state AS project_outcome,COUNT(id) AS total_projects
FROM projects
GROUP BY state
ORDER BY total_projects DESC;

#KPI-2
#Total Number of Projects based on country
SELECT l.country,COUNT(p.id) AS total_projects
FROM projects p
JOIN location l 
ON p.location_id = l.location_id
GROUP BY l.country ORDER BY total_projects DESC;

#KPI-3
#Total Number of Projects based on  Category
SELECT c.category_name,COUNT(p.id) AS total_projects
FROM  projects p
JOIN category c 
ON p.category_id = c.category_id
GROUP BY c.category_name ORDER BY total_projects DESC;

#KPI-4
#Total Successful Projects
SELECT COUNT(id) AS total_successful_projects
FROM projects
WHERE state = 'successful';

#KPI-5
#Total Amount Raised 
SELECT SUM(usd_pledged) AS total_amount_raised_usd
FROM projects;

#KPI-6
#Total Number of Backers
SELECT SUM(backers_count) AS total_backers
FROM projects;

#KPI-7
#Avg NUmber of Days for successful projects
SELECT ROUND(AVG(No_of_days_for_completion), 2) AS avg_days_successful_projects
FROM projects
WHERE state = 'successful';

#KPI-8
#Top Successful Projects Based on Number of Backers
SELECT p.id,p.name AS project_name,cr.creator_name,c.category_name,l.displayable_name AS location,p.backers_count
FROM projects p
LEFT JOIN creator cr 
ON p.creator_id = cr.creator_id
LEFT JOIN category c 
ON p.category_id = c.category_id
LEFT JOIN location l 
ON p.location_id = l.location_id
WHERE p.state = 'successful'
ORDER BY p.backers_count DESC
LIMIT 10;

#KPI-9
#Top Successful Projects Based on Amount Raised.
SELECT p.id,p.name AS project_name,cr.creator_name,c.category_name,l.displayable_name AS location,p.usd_pledged AS amount_raised
FROM projects p
LEFT JOIN creator cr 
ON p.creator_id = cr.creator_id
LEFT JOIN category c 
ON p.category_id = c.category_id
LEFT JOIN location l 
ON p.location_id = l.location_id
WHERE p.state = 'successful'
ORDER BY p.usd_pledged DESC
LIMIT 10;





