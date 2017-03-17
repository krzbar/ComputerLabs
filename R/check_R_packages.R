# Get the names of all packages
package_list_cran<-read.csv("https://raw.githubusercontent.com/STIMALiU/ComputerLabs/master/R/Packages/cran_packages.csv")
package_list_github<-read.csv("https://raw.githubusercontent.com/STIMALiU/ComputerLabs/master/R/Packages/github_packages.csv")
package_vect_cran<-as.character(package_list_cran$Package)
package_vect_github<-as.character(package_list_github$Package)
package_vect<-c(package_vect_cran,package_vect_github)

# Try to load all packages:
for(pkg in package_vect){
  # load package if possible:
  res <- try(suppressPackageStartupMessages(library(package = pkg, character.only = TRUE)), silent = TRUE)
  if(inherits(res, "try-error")) {
    cat(res[1])
  } else {
    # Try to remove loaded R-package from R-session:
    try(detach(name = paste0("package:", pkg), character.only = TRUE))
  }
}