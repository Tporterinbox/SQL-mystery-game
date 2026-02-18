-- Record your SQL detective process here!  Write down: 
  -- 1. The SQL queries you ran

  SELECT location FROM crime_scene;

SELECT id FROM crime_scene  WHERE location = 'West Hollywood Records'; 
-- 65

 SELECT location FROM crime_scene WHERE location = 'West Hollywood Records'; 

 SELECT description FROM crime_scene WHERE location = 'West Hollywood Records'; 

 SELECT type FROM crime_scene WHERE location = 'West Hollywood Records';

 SELECT clue FROM  witnesses WHERE id = '55';
--  I saw a woman in a red dress running down the stairs just after the incident.

 SELECT id FROM witnesses WHERE crime_scene_id= '55';
--  7 and 65

SELECT clue FROM witnesses WHERE crime_scene_id= '65
';

SELECT clue FROM  witnesses WHERE crime_scene_id = '65';
-- I saw a man wearing a red bandana rushing out of the store.
-- The main thing I remember is that he had a distinctive gold watch on his wrist

SELECT name FROM suspects WHERE bandana_color='red';


SELECT name FROM suspects WHERE bandana_color='red' AND  accessory= 'gold watch';
-- Tony Ramirez id35
-- Mickey Riveran id44
-- Rico Delgado  id97

SELECT transcript  FROM interviews WHERE suspect_id= '97';
-- I couldn't help it. I snapped and took the record.
-- -Rico Delgado

-- Excellent work, detective! Rico Delgado has confessed to stealing the prized vinyl record.

--  ------------------------------------------

  -- 2. Any notes or insights as SQL comment

  -- -------------------------------------
  -- 3. Your final conclusion: who did it?
