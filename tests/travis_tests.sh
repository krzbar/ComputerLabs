#!/bin/bash
#

git log -n 1
R --version
script_start_time=$(date +"%T")
# Set STIMA Error to 1 (to break Travis)
echo "STIMA=1" > "STIMA.sh"


echo $(date +"%T")

echo " " && echo -en "travis_fold:start:install_all_packages\n"
bash R/bash/install_all_packages.sh
tr_exit=$?; echo $tr_exit; if [[ $tr_exit != 0 ]]; then exit $tr_exit; fi

echo $(date +"%T")
