total=$#
for((i=1;i<=$total;i+=2)); do
    echo -n "${!i} "
done