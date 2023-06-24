select id_ins
from Insegna as x, Insegna as y, Classe as c1, Classe as c2 
where x.id_ins=y.id_ins and x.id_classe= c1.ID and y.id_classe= c2.ID and c1.id_scuola<>c2.id_scuola
