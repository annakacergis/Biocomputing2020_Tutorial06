#Run this script with bash this_file_name wages.csv
#Returns the highest Earner

echo The highest earner:

sort -n -t ',' -k4 $1 | tail -n 1

#Returns the Lowest Earner

echo The lowest earner:

sort -n -t ',' -k4 $1 | head -n 2 | tail -n 1

#Returns the the number of females in the top ten earners in this data set
 
echo The number of females in the top ten earners:
sort -n -t ',' -k4 $1 | tail -n 10 | grep -E "female" | wc -l
