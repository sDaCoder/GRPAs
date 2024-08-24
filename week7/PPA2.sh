cat result | while IFS= read line; do
    cat map | while IFS=' ./' read hash path; do
        if [ $hash == $line ]; then
            echo $path | cut -c1 --complement
        fi
    done
done | while IFS= read line; do
    grep -r 'INVESTMENT' | while IFS=: read path paisa; do
        if [ $line == $path ]; then
            echo $paisa
        fi
    done
done | awk '{print $NF}' | cut -c1 --complement > paisa.txt

x=0
while IFS= read -r m; do
    x=$((x + m))
done < paisa.txt
echo $x
rm paisa.txt