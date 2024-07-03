paragraph=`cat test.txt`
reqd=$(echo "$paragraph" | grep -vE "\b(GNU)\b")
echo -e "$reqd\n"