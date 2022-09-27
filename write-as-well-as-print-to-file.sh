#!/bin/bash
# Courtesy : Mohammed Ghadiyali

# This thing only print to file
echo "volume of cell" > out1.log
echo "dipole moment"  >> out1.log

# This thing will print as well as write to file 
echo "volume of cell" | tee out2.log
echo "dipole moment"  | tee -a out2.log

# By default `tee` override the file `-a` will force it to append 
