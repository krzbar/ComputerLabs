# R på Stima, IDA, Linköpings Universitet

Nedan finns information hantering av R-versioner och olika paket i PC-Pularna på IDA.

## Olika R versioner i PC-Pularna

Det finns flera parallella versioner av R på datorerna i PC-Pularna. De finns som egna ikoner i startmenyn. I R-Studio kan man välja vilken version vi vill använda på följande [sätt](https://support.rstudio.com/hc/en-us/articles/200486138-Using-Different-Versions-of-R). Det gör att en uppdatering kan göras utan att det blir problem för de andra lärarna.

Som default används den senaste versionen av R i R-Studio.

R-Studio uppdateras när en ny version kommer. 


## R-paket i olika kurser

Det finns ett antal olika R paket som används på olika kurser. Oleg Sysoev har ett Google Spreedsheet där respektive lärare anger vilka R-paket som används i respektive kurs. 

För att installera de R-paket som används i olika kurser har ett mindre R paket tagits fram för att förenkla för lärare och studenter. 

För att installera paketet ```stimaRpackages``` kör följande kod:
```
> install.packages("devtools") # If not installed
> devtools::install_github("STIMALiU/ComputerLabs", subdir = "RPackage")
```

För att installera samtliga R paket som används vid Stima, kör:
```
> stimaRpackages::install_stima_packages()
```

Det är också möjligt att installera paketen som behövs för en enskild kurs. De kurser som använder R plockas fram med
```
> stimaRpackages::get_stima_r_courses()
[1] "732A98 Oleg Sysoev"         "732A94 Krzysztof Bartoszek" "732G34 Krzysztof Bartoszek"
[4] "732A90 Krzysztof Bartoszek" "732G31 Isak Hietala"        "732G30 Isak Hietala"       
[7] "732G12 Isak Hietala"        "732G38 Isak Hietala"        "732G39 Isak Hietala" 
```

För att installer paketen som krävs för en given kurs är det bara att köra (exempelvis):
```
> stimaRpackages::install_stima_packages(course = "732G30 Isak Hietala")
```

## Tentamina

Vid datortentor anger läraren vilken R-version som ska användas.

## För TUS (installera alla R-paket)
För att installera samtliga paket från bash, kör:
```
bash R/bash/install_all_packages.sh
```
