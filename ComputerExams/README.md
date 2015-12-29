# Dokumentation för tentamen i PC pular

- Instruktioner för lärare
    - Instruktioner för tentan [DocTeacher.pdf](https://github.com/STIMALiU/ComputerLabs/raw/master/ComputerExams/DocTeacher.pdf)
    -  Skriptet [copyexam.bat](https://github.com/STIMALiU/ComputerLabs/blob/master/ComputerExams/copyexam.bat) kan användas för att ladda ner studenternas lösningar till egen dator till mappen Z:\inlamn
    - [kopieralosning.R](https://github.com/STIMALiU/ComputerLabs/blob/master/ComputerExams/kopieralosning.R) som används för att generera copyexam.bat. I denna fil kan du ändra mappen som studentlösningar ska laddas ner till samt antalet tentakonton som används.

- Instruktioner för administratörer [DocAdm.pdf](https://github.com/STIMALiU/ComputerLabs/raw/master/ComputerExams/DocTeacher.pdf)

- Instruktioner för studenter
    - på svenska [DocStudent.pdf](https://github.com/STIMALiU/ComputerLabs/raw/master/ComputerExams/DocStudent.pdf)
    - på engelska [DocEngStud.pdf](https://github.com/STIMALiU/ComputerLabs/raw/master/ComputerExams/DocEngStud.pdf)

- Instruktioner för vakter [DocGuard.pdf](https://github.com/STIMALiU/ComputerLabs/raw/master/ComputerExams/DocGuard.pdf)

- Instruktioner för TUS gruppen [DocTUS.pdf](https://github.com/STIMALiU/ComputerLabs/raw/master/ComputerExams/DocTUS.pdf)


## TeX-filen

För att generera dokumenten ovan kör följande kod i terminalen (kräver latex):

```
latex DocAll.tex
```
