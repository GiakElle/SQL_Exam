select Id_alunno
from Storicoiscrizione as s, Classe, Scuola
Where AS=2020 and S.id_classe=Classe.ID and Classe.id_scuola=Scuola.ID and Scuola.tipo='SS'
