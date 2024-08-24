{
    prev_word = ""
    repeat_word = ""

    for (i = 1; i <= NF; i++) {
        if ($i == prev_word) {
            if (repeat_word != $i) {
                # Print the repeated word on a new line
                print $i
                repeat_word = $i
            }
        } else {
            repeat_word = ""
        }
        prev_word = $i
    }
}