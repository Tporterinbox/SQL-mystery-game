-- a) Start by retrieving the corresponding crime scene report from the police department’s database.
-- b

-- Record your SQL detective process here!  Write down: 

--   1. The SQL queries you ran

-- shows the crime report's description:
SELECT*FROM crime_scene_report WHERE date = 20180115
AND city= 'SQL City' AND type = 'murder'


 -- Security footage shows that there were 2 witnesses. The first witness lives 
-- at the last house on "Northwestern Dr".
--  The second witness, named Annabel, lives somewhere on "Franklin Ave".


--  witnesses involved in the case. 
-- run the SELECT * statement to view the person table:
SELECT *
FROM person LIMIT 5;


-- identify the location of the first witness mentioned in the crime scene report.
-- locate the first witness who lives at the last house on 
-- "Northwestern Dr" street in the person table using WHERE and SQL ORDER BY clauses:
-- first witness is Morty Schapiro with id 14887, license_id 118009, and ssn 111564949.
SELECT *
FROM person
WHERE address_street_name = "Northwestern Dr"
ORDER BY address_number DESC;
              

-- locate the second witness mentioned in the crime scene report, 
-- who is named "Annabel" and resides on "Franklin Ave" street.  
-- using the LIKE operator alongside the % wildcard before and after "Annabel",
--  it looks for any occurence of "Annabel" within the name field.       
SELECT *
FROM person
WHERE name LIKE '%Annabel%'
AND address_street_name = "Franklin Ave";             



--  review their interviews for any additional clues. 
 --  use the SELECT * statement with the SQL IN operator 
 --   to view the interview table and retrieve the interviews of the witnesses:
SELECT *
FROM interview
WHERE person_id IN ("14887", "16371");            

-- Transcripts from witnesses:
-- I heard a gunshot and then saw a man run out. 
-- He had a "Get Fit Now Gym" bag. The membership number on the bag started with "48Z".
--  Only gold members have those bags. The man got into a car with a plate that included "H42W".
-- I saw the murder happen, and I recognized the killer from my gym
--  when I was working out last week on January the 9th.



-- check the gym check-ins for potential suspects with membership no. starting from "48Z".
--There are two members with membership_ids 48Z7A and 48Z55.
SELECT *
FROM get_fit_now_check_in
WHERE membership_id LIKE '48Z%'
AND check_in_date = "20180109";



-- verify the gender and car plate information of potential suspects
SELECT *
FROM drivers_license
WHERE gender = "male"
AND plate_number LIKE '%H42W%';
-- The owner of the car could either have license_id 423327 or 664760.            



-- get details about them from the person table.	
-- check which of these two are a member of the gym.
SELECT *
FROM person
WHERE license_id IN ("423327", "664760");



-- ********* Syntax error
-- one of these two are the murderers,
--   The murderer is a gold member of the gym .
SELECT *
FROM get_fit_now_member
WHERE person_id IN ("51739", "67318");

 
 
-- murderer is ---> Jeremy Bowers id:48Z55, person_id: 67318
-- (gym) membership_start_date = 20160101  
-- membership status- Gold


-- _________________________________________________________________


--   2. Any notes or insights as SQL comments

  

-- -----------------------------------------------------------------

--   3. Your final conclusion: who did it? --> Jeremy Bowers

INSERT INTO solution VALUES (1, 'Jeremy Bowers'); 
SELECT value FROM solution;
-- murderer is ---> Jeremy Bowers id:48Z55, person_id: 67318
-- (gym) membership_start_date = 20160101  
-- membership status- Gold

-- ------------------------------------------------------------------

-- Using these SQL clauses will help you solve the mystery: 
--    SELECT, FROM, WHERE, AND, OR, ORDER BY, LIMIT, LIKE, DISTINCT, BETWEEN, AS

-- writing a comment like this

-- selecting all columns from the crime scene report
SELECT * FROM crime_scene_report;
