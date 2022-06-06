awk -v strain=$strain 'NR==3{ $2=$2*strain }{print}' POSCAR
awk "NR==3{ \$2=\$2*$strain }{print}" POSCAR
