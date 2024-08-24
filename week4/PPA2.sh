pin=515002
grep ",$pin," Pincode_info.csv | awk -F',' '{gsub(/ Circle/, "", $1); gsub(/ Division/, "", $3); print $1, $3}'