#bin/bash


find_and_replace(){
# First Argument is base file
# Second in refernce file
# 3rd Argument is output file
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