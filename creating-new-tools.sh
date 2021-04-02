# create or edit a file -----------------------------
# nano src/course.txt

# `ctrl + K` to delete a line
# `ctrl + U` to un-delete a line
# `ctrl + O` to save the file then press enter
# `ctrl + X` to exit the file

# save commands to re-run later -----------------------------

# create file `date.sh`
# nano date.sh

# type this command inside `date.sh`
# cut -d , -f 1 src/seasonal/*.csv | grep -v Date | sort | uniq

# run the `date.sh` using `bash` command
# bash date.sh

# re-use pipes -----------------------------

# run `date.sh` and save the result to `dates.out`
# bash date.sh > dates.out

# view the `dates.out` file
# cat dates.out

# pass filenames to scripts -----------------------------

# create `unique-lines.sh` file
# nano unique-lines.sh

# type this command inside `unique-lines.sh`
# cut -d, -f 2 $@ | sort | uniq

# run `bash` command to run `unique-lines.sh` by passing filename as parameter
# bash unique-lines.sh src/seasonal/summer.csv

# write loops in a shell script -----------------------------
# nano head-tail.sh

# type this command below inside `head-tail.sh`
# Print the first and last data records of each file.
# for filename in $@
# do
#     head -n 2 $filename | tail -n 1
#     tail -n 1 $filename
# done

# run `bash` command to run `head-tail.sh` by passing filename as parameter
# bash head-tail.sh src/seasonal/summer.csv