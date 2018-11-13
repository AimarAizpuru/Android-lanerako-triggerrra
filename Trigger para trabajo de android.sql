CREATE TABLE notifikazioa(
notifikatu varchar(200)
);



CREATE OR REPLACE TRIGGER notifikatu_chefari AFTER INSERT OR UPDATE on Eskaera

FOR EACH

BEGIN

IF INSERTING THEN

	INSERT INTO notifikazioa VALUES ('Eskaera berri bat egin da');
	
ELSIF UPDATING THEN
	
	INSERT INTO notifikazioa VALUES ('Eskaera batean aldaketa bat egon da');
	
END IF;

END;
/


SELECT * FROM notifikazioa;