BEGIN{
    max_lines=0
}

{
    total_lines[FILENAME]++
}

END{
    for (line in total_lines) {
        if(total_lines[line] > max_lines) {
            max_lines = total_lines[line]
        }
    }
    print max_lines
}