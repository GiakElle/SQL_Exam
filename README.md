# SQL_Exam
Esame di Basi di dati 2023
<h3 style="text-align: center";>UNIVERSITÀ DELLA CALABRIA
  
Dipartimento di Matematica e Informatica\
Corso di Laurea in Informatica  
A.A. 2022/2023\
PROGETTO PER IL CORSO DI\
BASI DI DATI \
DOCENTE: PROF. P. RULLO\
LABORATORIO: ING. G. LABOCCETTA,DOTT.SSA D. ANGILICA</h3>


**SISTEMA INFORMATIVO**
**PER LA GESTIONE DI**
**UN ISTITUTO COMPRENSIVO.**


#Vincoli Applicativi:\
• L’attributo *numerosa* di ASSEGNAMENTO è un attributo calcolato; è vero se #alunni iscritti nell’AS>25\
• L’attributo *nome* di FASCIAETÀ è un identﬁcatvo semantco che assume i seguent valori:
  infante(età 2-3), bambino (età 3-5), fanciullo (età 5-10), adolescente (età 10,15)\
• L’attributo *tipo* di SCUOLA assume valori in {SI, SP, SS}\

#Vincoli di Integrità:\
• Se il tipo scuola di una istanza di SCUOLA è SI, allora l’attributo *tempoPieno* deve assumerevalore NULL
• Ad ogni classe, ogni anno, non può essere iscritto un numero di alunni superiore al numero massimo di studeni ospitabili dall’aula associata alla classe per quell’A.S.

#Modello Relazionale – Schema Logico

1\. ALUNNO(**CF**, nome, cognome, data\_nascita, sostegno)

2\. INSEGNANTE(**CF**, nome, cognome, data\_nascita, di\_ruolo, materia)

3\. CLASSE(**id**, numero, leꢀera, id\_scuola\*)

4\. AULA(**id**, mq, #max:stud, nome\_fasciaEtà\*, id\_plesso\*)

5\. PLESSO(**id**, indirizzo, #piani, ascensore)

6\. FASCIAETÀ(**nome**, min, max)

7\. SCUOLA(**id**, nome, telefono, tipo, tempoPieno)

8\. INSEGNA(**id\_ins\*, id\_classe\*, AS**, ore, numerosa)

9\. ASSEGNAMENTO(**id\_classe\*, id\_aula\*, AS)**

10\. STORICOISCRIZIONE(**id\_alunno\*, id\_classe\*, AS,** data)
