len=0
for f in *; do
    current_len=$(expr length "$f")
    if [ "$len" -lt "$current_len" ]; then
        len=$current_len
    fi
done

for f in *; do
    echo "$f:" | tr -d '\n'
    current_len=$(expr length "$f")
    reqd=`expr $len - $current_len`
    printf "%${reqd}s" ""
    echo " " | tr -d '\n'
    echo "$(file -b "$f")"
done