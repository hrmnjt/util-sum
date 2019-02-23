#!/bin/bash

################################################################################
#                                                                              #
# File Name   : loadArgs.sh                                                    #
# Description : Script to dinamically load args with -- as variables           #
# Date        : 2018-06-26                                                     #
# Version     : 1.0                                                            #
#                                                                              #
################################################################################

# Defining colors for stdout
GREEN='\033[0;32m'       # Green color
RED='\033[0;31m'         # Red color
NC='\033[0m'             # No color

printf "\n${GREEN}Calculating sum from system arguments${NC}"
printf "\n\nServer: $(hostname)\nUser: $(whoami)"
printf "\nBash version : $(bash --version)\n\n"

printf "Executing: \n"
echo "bash your-script.sh $@"

# Inform user about the usage of the script
usage() {
  printf "\n${RED}Usage:- bash your-script.sh space-separated-integers${NC}\n"
}

# Do a check if system arguments are integers
check_for_integers() {

}

# calculate the sum of integers
# inputs: space separated integer array
# output: sets a variable total_sum as sum of the input array
# NOTE: does not handle non-integers i.e. floating point or string
sum_of_integers() {
  total_sum=0
  local input_array=$@
  for iterator in ${input_array[@]}; do
    total_sum=$(expr ${total_sum} + ${iterator}) 
  done
}

# check args
if [ $# -eq 0 ] ; then
  usage
fi

sys_args="$@"
total_sum=0

sum_of_integers ${sys_args} 2> /dev/null
echo "Total: ${total_sum}" 
