# >: store command's output in a file -----------------------------
# head -n 5 src/seasonal/summer.csv > top.csv

# use `>` command as an input
# head -n 5 src/seasonal/summer.csv > top.csv
# tail -n 3 top.csv

# | : best way to combine commands -----------------------------
# `cut -d, -f 2 src/seasonal/summer.csv | grep -v Tooth`

# wc (word count): count the records in a file -----------------------------

# print out the # of lines, # of words, & # of bytes/char
# wc src/seasonal/summer.csv

# can specify only count lines using `-l`
# can specify only count wods using `-w`
# can specify only count bytes using `-c`

# *: to view all files in a directory at once -----------------------------
# cat src/seasonal/*.csv

# wildcards -----------------------------
# `?` to match a single character
# ls src/seasonal/?ummer.csv

# `[...]` to match any one of the char inside the square brackets
# ls src/seasonal/[copied,autumn,winter]*.csv

# `{...}` to match any of the comma-seperated patterns inside the curly braces
# ls src/seasonal/{copied,autumn,winter}*.csv

# sort: to sort lines of text -----------------------------
# cut -d, -f 2 src/seasonal/summer.csv | sort

# uniq: remove duplicate lines -----------------------------
# cut -d, -f 2 src/seasonal/summer.csv | sort | uniq