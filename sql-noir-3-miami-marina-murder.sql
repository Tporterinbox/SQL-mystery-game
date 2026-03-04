-- -- Record your SQL detective process here!  Write down: 
--  two people -'Raul Gutierrez' and 
  -- 1. The SQL queries you ran

  SELECT id FROM crime_scene WHERE location='Coral Bay Marina';
  -- Location ID is 43
-- ---------
  SELECT location FROM crime_scene WHERE id ='43';
  -- Coral Bay Marina
-- --------
 SELECT description from  crime_scene WHERE location='Coral Bay Marina';
--  The body of an unidentified man was found near the docks. Two people were seen nearby: 
--  one who lives on 300ish "Ocean Drive" 
--  and another whose first name ends with "ul" and his last name ends with "ez".
-- ------------
SELECT person_id FROM interviews where id ='43';
-- person_id= 189
-- -------
SELECT transcript FROM interviews WHERE person_id ='189';
-- The victim was arguing with someone at the bar earlier that evening.
-- I saw someone cleaning blood off their hands near the bait shop.
-- I overheard a conversation about a deal gone wrong.
-- I heard someone threatening the victim earlier that day.
-- I saw a flashlight moving around the closed marina office.
-- The victim was seen exchanging envelopes with an unknown person.
-- Someone was seen climbing onto boats after hours.
-- --------
SELECT address FROM person WHERE id ='189';
-- 15 Harbor Lane
-- ---------------
SELECT name FROM person WHERE id ='189';
-- Floyd Ferguson
-- ----------
 SELECT name FROM person;
--  Raul Gutierrez
-- -------------
SELECT address FROM person WHERE name ='Raul Gutierrez';
-- 45 Sunset Ave.
-- -------------
SELECT occupation FROM person WHERE name ='Raul Gutierrez';
-- Nightclub owner
-- -------------
SELECT id FROM person WHERE name ='Raul Gutierrez';
-- ID 102
-- ------------
SELECT transcript FROM interviews WHERE person_id ='102';
-- I heard someone checked into a hotel with "Sunset" in the name.
-- ------------
SELECT person_id FROM surveillance_records WHERE suspicious_activity='Seen arguing with an unknown person';
-- person_id is 7.
-- ------------
SELECT confession FROM confessions WHERE person_id ='7';
-- --I was just walking my dog that night.
-- -------------
SELECT person_id FROM confessions WHERE confession = 
'Alright! I did it. I was paid to make sure he never left the marina alive.';
-- person_id is 8.

  -- --------------------------------------------------
  -- 2. Any notes or insights as SQL comments
  -- --------------------------------------------------
  -- 3. Your final conclusion: who did it?
  -- Great detective work! Thomas Brown has confessed to the crime.
SELECT name FROM person WHERE id = '8';
--  Thomas Brown did it  person_id= 8

