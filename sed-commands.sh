# Matchng pattern replacement

# Replace only first appearance of ABC with DEF in the input.txt file
sed -i "s/ABC/DEF/" input.txt

# Replace all appearance of ABC with DEF in the input.txt file
sed -i "s/ABC/DEF/g" input.txt

# Change complete line containing txt ABC
sed -i "/ABC/c\ABC=1" input.txt


# Add I option to GNU sed to case insensitive search
sed -i "s/word1/word2/I" input.txt

# Only find word ‘love’ and replace it with ‘sick’ if line content a specific string such as FOO
sed -i -e '/FOO/s/love/sick/' input.txt
