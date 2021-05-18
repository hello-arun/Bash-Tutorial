#bin/bash
#This file contains a method which replace the vc-relaxed coordinated to a new file
#It requires a the intital inputfile outputfile and target file

find_and_replace(){
	# First Argument is base input file 
	# Second in refernce output file
	# 3rd Argument is output file where we want the final changes
	tempfile=tempppp
	o_start=$(awk '/Begin final/ {print NR}' $2)
	o_end=$(awk '/End final/ {print NR}' $2)
	i_start=$(awk '/CELL_PARA/ {print NR}' $1)
	awk -v i_start="$i_start" 'NR<=i_start{print}' $1 > $tempfile
	awk -v o_start="$o_start" -v o_end="$o_end" 'NR>4+o_start && NR<o_end {print}' $2 >> $tempfile
	echo "" >> $tempfile
	mv $tempfile $3
}
find_and_replace GeSe.relax.in GeSe.relax.out GeSe.relax.in
