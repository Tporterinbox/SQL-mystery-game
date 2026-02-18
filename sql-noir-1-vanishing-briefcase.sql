-- Record your SQL detective process here!  Write down: 

  -- 1. The SQL queries you ran

  SELECT * FROM suspects
WHERE attire = 'trench coat';

-- id    	name	        attire	         scar
-- 3	Frankie Lombardi	trench coat	left cheek
-- 183	Vincent Malone	trench coat	left cheek
-- 237	Christopher Black	trench coat	right cheek
-- ----------

SELECT description FROM crime_scene;

SELECT description FROM crime_scene WHERE location = 'Blue Note Lounge';
-- description
-- A briefcase containing sensitive documents vanished. 
-- A witness reported a man in a trench coat with a scar on his left cheek fleeing the scene.

-- -----------

SELECT transcript FROM interviews wHERE suspect_id = '183';

-- I wasn’t going to steal it, but I did. ----- Vincent Malone 

-- -------------------------------------------------------------------


  -- 2. Any notes or insights as SQL comments


  -- -------------------------------------------------------------------

  -- 3. Your final conclusion: who did it?
-- Congratulations, detective! You have successfully identified Vincent Malone as the culprit.
-- Congratulations, detective! You have successfully identified Vincent Malone as the culprit.

--  Vincent Malone 