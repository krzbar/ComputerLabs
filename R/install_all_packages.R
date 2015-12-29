# Get matrix with installed packages
inst_pack_list <- installed.packages()

# Install nessecary packages
if(!"repmis" %in% rownames(inst_pack_list)) install.packages("repmis")
if(!"devtools" %in% rownames(inst_pack_list)) install.packages("devtools")

# Get list of needed packages from github
needed_cran_packages <- repmis::source_data("https://raw.githubusercontent.com/MansMeg/R_at_IDA/master/Packages/cran_packages.csv", stringsAsFactors = FALSE)
needed_github_packages <- repmis::source_data("https://raw.githubusercontent.com/MansMeg/R_at_IDA/master/Packages/github_packages.csv", stringsAsFactors = FALSE)

# Install all previously noninstalled packges from CRAN
to_install <- needed_cran_packages[!needed_cran_packages[,1] %in% rownames(inst_pack_list), 1]
if(length(to_install) > 0){
  install.packages(pkgs = to_install)
}

# Install all previously noninstalled packges from Github
to_install_github <- needed_github_packages[!needed_github_packages[,1] %in% rownames(inst_pack_list), 2]
if(length(to_install_github) > 0){
  devtools::install_github(to_install_github)
}

