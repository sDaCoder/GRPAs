# clear
data=`cat employees.csv`
reqd_data=$(echo "$data" | grep -E "^[^,]+,Manager,R&D")
echo -e "$reqd_data" > info.csv
# echo -e "$data\n"