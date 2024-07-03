# clear
# total=0
# non_empty=0
# isArticle=0
# while read line; do
#     ((total+=1))
#     if [[ -n "$line" ]]; then
#         ((non_empty+=1))
#         if [[ "$line" == *"a"* || "$line" == *"an"* || "$line" == *"the"* ]]; then
#             ((isArticle+=1))
#         fi
#     fi
# done < poem
# echo $((non_empty-isArticle))

#!/bin/bash

# paragraph="This is a sample paragraph.
# It contains several lines of text.
# Some lines have articles like a, an, or the.
# Others do not.
# We want to find the lines without any articles."

# Use grep to filter non-empty lines without articles
# echo "Non-empty lines without articles:"
# echo "$non_empty_lines_without_articles"

paragraph=`cat poem`
non_empty_lines_without_articles=$(echo "$paragraph" | grep -vE "^\s*$" | grep -vE "\b(a|an|the)\b")
count=$(echo "$non_empty_lines_without_articles" | wc -l)
echo $count
