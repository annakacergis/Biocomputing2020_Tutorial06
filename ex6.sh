undergrad_lowest=$(cat wages.csv | cut -d "," -f 3,4 | grep -E "12,"| sort -n -t "," -k 2 | head -n 1 | cut -d "," -f 2)
grad_lowest=$(cat wages.csv | cut -d "," -f 3,4 | grep -E "16," | sort -n -t "," -k 2 | head -n 1 | cut -d "," -f 2)
echo "$grad_lowest-$undergrad_lowest" | bc
