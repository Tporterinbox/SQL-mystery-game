-- Record your SQL detective process here!  Write down: 
  -- 1. The SQL queries you ran

 SELECT locationFROM crime_scene;
  -- Fontainebleau Hotel
-- ----------
-- Inner Join 
SELECT guest.id FROM guest INNER JOIN final_interviews ON guest.id = final_interviews.id;

-- ------------------------
 SELECT id FROM crime_scene WHERE location = 'Fontainebleau Hotel'
;
  -- ID is 48
-- ------------

-- description
SELECT description FROM crime_scene WHERE location = 'Fontainebleau Hotel'
;
-- The Heart of Atlantis necklace disappeared.
--  Many guests were questioned but only two of them gave valuable clues. 
--  One of them is a really famous actor. 
--  The other one is a woman who works as a consultant for a big company 
--  and her first name ends with "an".
-- --------------
SELECT confession FROM final_interviews
;
--  I was the one who took the crystal. I guess I need a lawyer now?
-- -------------
   SELECT clue FROM witness_statements WHERE id='48'
;
--  From the parking lot, I saw someone copying down the security patrol schedule.
-- --------------
SELECT id FROM final_interviews WHERE confession = 
'I was the one who took the crystal. I guess I need a lawyer now?'

--  105
----------------

SELECT name FROM  guest WHERE id= '105';



-- Mike Manning 
  -- ---------------------------------------------------
  -- 2. Any notes or insights as SQL comments
  -- ----------------------------------------------------
  -- 3. Your final conclusion: who did it?
 --  Mike Manning , Outstanding detective work! 
--  The evidence conclusively shows that Mike Manning is the thief.