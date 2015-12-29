# R i PC-Pularna på IDA

Nedan finns information hantering av R-versioner och olika paket i PC-Pularna på IDA.

## Olika R versioner

Det finns flera parallella versioner av R på datorerna i PC-Pularna. De finns som egna ikoner i startmenyn. I R-Studio kan man välja vilken version vi vill använda på följande [sätt](https://support.rstudio.com/hc/en-us/articles/200486138-Using-Different-Versions-of-R). Det gör att en uppdatering kan göras utan att det blir problem för de andra lärarna.

Som default används den senaste versionen av R i R-Studio.

R-Studio uppdateras när en ny version kommer. 

## R-paket
De R-paket som finns förinstallerade på alla PC-Pular från CRAN finns [här](https://github.com/MansMeg/R_at_IDA/blob/master/Packages/cran_packages.csv) och de paket som finns installerade från github finns [här](https://github.com/MansMeg/R_at_IDA/blob/master/Packages/github_packages.csv).

Under 'user' i csv-filerna finns de lärare som använder paketen som TUS kan kontakta om det är några problem vid uppdateringar.

Studenter kan alltid själva installera paket om de vill - dock ej under tentor.

För att se versionerna för de paket som finns installerade för en given R-version:
```
installed.packages()
```

## Tentamina

Vid datortentor anger läraren vilken R-version som ska användas.

## För TUS
För att installera samtliga paket som behövs körs [följande](https://raw.githubusercontent.com/MansMeg/R_at_IDA/master/install_packages_IDA.R) skriptfil i R.

