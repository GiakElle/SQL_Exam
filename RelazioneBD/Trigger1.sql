DELIMITER //

CREATE TRIGGER CheckEtà
  BEFORE INSERT ON StoricoIscrizione
  FOR EACH ROW
  IF(((select YEAR(NOW())-YEAR(data_nascita)
       from Alunno 
       where Alunno.cf = New.id_alunno) > (select x.max
                                           from RangeFasciaEtà as x, Assegnamento as y, Aula as z
                                           WHERE NEW.id_classe=y.id_assegnamento and y.id_aula=z.id and z.fasciaEtà = x.nome)) or  
     ((select YEAR(NOW())-YEAR(data_nascita)
       from Alunno 
       where Alunno.cf = New.id_alunno) < (select x.min
                                           from RangeFasciaEtà as x, Assegnamento as y, Aula as z
                                           WHERE NEW.id_classe=y.id_assegnamento and y.id_aula=z.id and z.fasciaEtà = x.nome)))
  THEN SIGNAL SQLSTATE '45000' set message_text = 'An error occurred';
  END IF;//   

DELIMITER ;
  