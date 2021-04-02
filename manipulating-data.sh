# cat (concatenate): to view a file's content -----------------------------
# cat src/seasonal/summer.csv

# more: this command can also be used to view a file's content -----------------------------
# more src/seasonal/summer.csv

# less: to view file's content piece by piece -----------------------------

# can press `spacebar` to page down or type `q` to quit
# less src/seasonal/summer.csv

# to view multiple files at once, can type `:n` to move to next file, and type `:q` to quit
# less src/seasonal/summer.csv src/seasonal/autumn.csv

# head: to print the first few lines of a file -----------------------------

# by default it prints first 10 lines
# head src/seasonal/summer.csv

# print first 5 lines
# head -n 5 src/seasonal/summer.csv

# tail: to print the last few lines of a file -----------------------------

# by default it prints last 10 lines
# tail src/seasonal/summer.csv

# print last 5 lines
# tail -n 5 src/seasonal/summer.csv

# man (manual): to print description of what a command do -----------------------------
# man head

# cut: to select columns from a file -----------------------------

# using `-f` (fields) to select which field & `-d` (delimiter) to specify separator that used inside the file
# command below means: select columns 2 through 5 and column 8, using comma as separator
# cut -f 2-5,8 -d , values.csv

# history: to list down the command that we have typed before -----------------------------

# can type `!2` to re run the command number 2 in history
# history
# !2

# can type `!head` to re run the head command that we have run before
# history
# !head

# grep: to select lines containing specific values -----------------------------
# grep molar src/seasonal/autumn.csv

# to select lines that DOESN'T contain specific values
# grep -v molar src/seasonal/autumn.csv

# print the name of files that contain specific values
# grep -l molar src/seasonal/autumn.csv

# print the count of matching lines that contain specific values
# grep -c molar src/seasonal/autumn.csv

# can use `-h` to not print the names of files when searching multiple files
# can use `-i` to ignore case sensitive
# can use `-n` to print the line numbers for matching lines

# paste: to merge line of files -----------------------------
# paste src/seasonal/*