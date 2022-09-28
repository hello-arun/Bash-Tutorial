# Stream Editor

Find and replace
```
# Only first appearance in each line will be replaced
sed "s/Pineapple/Feta/" input.txt

# Case insensitive search add 'I'
sed "s/Pineapple/Feta/I" input.txt

# All appearance in each line will be replaced
sed "s/Pineapple/Feta/g" input.txt

# To make changes in the original file
sed -i "s/Pineapple/Feta/" input.txt


# Replace 'love' with 'sick' if line contains 'FOO'
sed -i -e '/FOO/s/love/sick/' input.txt
```

First char after `s` is delimter. Any delimiter can be chosen e.g. '+', '.', '_', '-', ' ' etc. All these perform the same task
```
sed "s+Pineapple+Feta+" input.txt
sed "s.Pineapple.Feta." input.txt
sed "s_Pineapple_Feta_" input.txt
sed "s-Pineapple-Feta-" input.txt
sed "s Pineapple Feta " input.txt
```

Change complete line containing txt ABC
```
sed -i "/ABC/c\ABC=1" input.txt
```

Some actions based on line numbers
```
# Print only 10th line
sed -n '10p' input.txt

# Print line 1 to 4 both included
sed -n '1,4p' input.txt

# Print until end of file starting from a line 3
sed -n '3,$p' input.txt
```

Multiple replacement with multi line 

```
sed "s/Pineapple/Feta/; \
    s/Pepperoni/XYZ/; \
    s/vc-relax/SCF/; \
    s/ibrav/IBRAV/;" input.txt
```