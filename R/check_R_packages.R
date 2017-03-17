package_list_cran<-read.csv("https://raw.githubusercontent.com/STIMALiU/ComputerLabs/master/R/Packages/cran_packages.csv")
package_list_github<-read.csv("https://raw.githubusercontent.com/STIMALiU/ComputerLabs/master/R/Packages/github_packages.csv")
package_vect_cran<-as.character(package_list_cran$Package)
package_vect_github<-as.character(package_list_github$Package)
package_vect<-c(package_vect_cran,package_vect_github)
for(pkg in package_vect){
  res <- try(suppressPackageStartupMessages(library(package = pkg, character.only = TRUE)), silent = TRUE)
  if(inherits(res, "try-error")) {
    cat(res[1])
  } else {
    try(detach(name = paste0("package:", pkg), character.only = TRUE))
  }
}