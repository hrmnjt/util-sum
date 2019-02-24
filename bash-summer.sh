#!/bin/bash

################################################################################
# File Name   : your-script.sh                                                 #
# Description : Script to print sum of space separated integers                #
# Date        : 2019-02-23                                                     #
# Version     : 1.0                                                            #
# Github      : https://github.com/hrmnjt/util-sum                             #
################################################################################

# Defining colors for stdout
GREEN='\033[0;32m'       # Green color
RED='\033[0;31m'         # Red color
NC='\033[0m'             # No color

# Printing the system details for the script
printf "\n${GREEN}Calculating sum from system arguments${NC}"
printf "\n\nServer: $(hostname)\nUser: $(whoami)"
printf "\nBash version : $(bash --version)\n\n"

printf "\n${GREEN}Executing: ${NC}\n"
echo "bash your-script.sh $@"

# Inform user about the usage of the script while stopping execution
usage() {
  printf "\n${RED}Execution stopped \n${NC}"
  printf "\n${RED}Usage:- bash your-script.sh space-separated-integers${NC}\n"
}

# calculate the sum of integers
# inputs: space separated integer array
# output: sets a variable total_sum as sum of the input array
# NOTE: does not handle non-integers i.e. floating point or string
sum_of_integers() {
  # initalize a total sum variable
  total_sum=0
  # defining the local variable to take input array
  local input_array=$@
  for iterator in ${input_array[@]}; do
    # check if the value being is an integer or not
    if [[ ${iterator} =~ ^-?[0-9]+$ ]]; then
      total_sum=$(expr ${total_sum} + ${iterator})
    else
      # halting execution on encountering non-integer value
      printf "\n${RED}${iterator} is not an integer${NC}"
      usage
      break
    fi
  done
  echo "Total: ${total_sum}" 
}

# Main program
# check if no arguments are passed
if [ $# -eq 0 ] ; then
  # halting execution as arguments were expected
  printf "\n${RED}No space separated integers in arguments${NC}"
  usage
else 
  sys_args="$@"
  sum_of_integers ${sys_args} 2> /dev/null
fi
