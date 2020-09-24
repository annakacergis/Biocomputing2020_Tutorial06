#Exercise 6 Part 1: file containing the unique gender-yearsExperience combos

cat wages.csv | cut -d, -f 1,2 | sed 's/,/ /g' | sort -k1 | sort -n -k2 >> uniqueGenderYearsExperience.txt 
