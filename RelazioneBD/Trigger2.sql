DELIMITER //

CREATE TRIGGER Piano
  BEFORE INSERT ON Aula
  FOR EACH ROW
  IF(NEW.piano>(SELECT piani
                FROM plesso
                WHERE plesso.id = NEW.id_plesso))
  THEN SIGNAL SQLSTATE '45000' set message_text = 'Errore nel piano';
  END IF;// 

DELIMITER ;