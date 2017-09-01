#!/bin/bash
#

Rscript --vanilla R/install_all_packages.R 
r_exit=$?; echo $r_exit; if [[ $r_exit != 0 ]]; then exit $r_exit; fi
