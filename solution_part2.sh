#Run this script with bash this_file_name wages.csv
#Returns the highest Earner

echo The highest earner demographics in gender, years of experience, wage:

sort -n -t ',' -k4 $1 | tail -n 1 | cut -d , -f 1,2,4

#Returns the Lowest Earner

echo The lowest earner demographics in gender, years of experience, wage:

sort -n -t ',' -k4 $1 | head -n 2 | tail -n 1 | cut -d , -f 1,2,4

#Returns the the number of females in the top ten earners in this data set
 
echo The number of females in the top ten earners:
sort -n -t ',' -k4 $1 | tail -n 10 | grep -E "female" | wc -l
