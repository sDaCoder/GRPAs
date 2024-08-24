read month
cal $month 2023 > $month.txt 2> error.txt
echo --$month.txt--
cat $month.txt
echo
echo --error.txt--
cat error.txt