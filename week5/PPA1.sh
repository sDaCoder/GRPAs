for l1 in {a..z}; do
    for l2 in {a..z}; do
        for N in {0..4}; do
            echo -n "file_$l1$l2$N.txt " >> documents.txt
        done
    done
done