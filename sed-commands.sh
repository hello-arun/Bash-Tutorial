# Matchng pattern replacement

# Replace only first appearance of ABC with DEF in the input.txt file
sed -i "s/ABC/DEF/" input.txt

# Replace all appearance of ABC with DEF in the input.txt file
sed -i "s/ABC/DEF/g" input.txt

# Change complete line containing txt ABC
sed -i "/ABC/c\ABC=1" $calcDIR/INCAR
