#!/bin/bash
#

git log -n 1
R --version
script_start_time=$(date +"%T")
# Set STIMA Error to 1 (to break Travis)
echo "STIMA_ERROR=1" > "STIMA_ERROR.sh"


echo $(date +"%T")

bash R/bash/install_all_packages.sh
tr_exit=$?; echo $tr_exit; if [[ $tr_exit != 0 ]]; then exit $tr_exit; fi

echo $(date +"%T")
