cat myauth.log | grep '\bsu\b' | grep '\buser\b \b[a-zA-Z0-9]\+\b by student' -o | awk '{print $2}'
