# R i PC-Pularna på IDA

Nedan finns information hantering av R-versioner och olika paket i PC-Pularna på IDA.

## Olika R versioner

Det finns flera parallella versioner av R på datorerna i PC-Pularna. De finns som egna ikoner i startmenyn. I R-Studio kan man välja vilken version vi vill använda på följande [sätt](https://support.rstudio.com/hc/en-us/articles/200486138-Using-Different-Versions-of-R). Det gör att en uppdatering kan göras utan att det blir problem för de andra lärarna.

Som default används den senaste versionen av R i R-Studio.

R-Studio uppdateras när en ny version kommer. 

## R-paket
Det finns ett antal olika R paket som används på olika kurser. Oleg Sysoev har ett Google Spreedsheet där respektive lärare anger vilka R-paket som används i respektive kurs. 

För att installera de R-paket som används i olika kurser har ett mindre R paket tagits fram för att förenkla för lärare och studenter. 

För att installera paketet ```stimaRpackages``` kör följande kod:
```
install.packages("devtools") # If not installed
devtools::install_github("STIMALiU/ComputerLabs", subdir = "RPackage")
```



## Tentamina

Vid datortentor anger läraren vilken R-version som ska användas.

## För TUS
För att installera samtliga paket som behövs körs [följande](https://raw.githubusercontent.com/STIMALiU/ComputerLabs/master/R/install_all_packages.R) skriptfil i R.
För att testa om pakten går att ladda in i en R-session, öppna R/RStudio och kör [följande](https://raw.githubusercontent.com/STIMALiU/ComputerLabs/master/R/check_R_packages.R) skriptfil. 

