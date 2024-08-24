# lines=$(wc -l data.txt | awk '{print $1}')
# if [ $lines -gt 16 ]; then
#     echo "Yes"
# else
#     echo "No"
# fi
# test $(wc -l data.txt | awk '{print $1}') -gt 16 && echo "Yes" || echo "No"
[ $(wc -l data.txt | awk '{print $1}') -gt 16 ] && echo "Yes" || echo "No"