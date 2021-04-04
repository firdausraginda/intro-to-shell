# store value to a variable -----------------------------

# to print what's inside the variable
# var=src/seasonal/summer.csv
# echo $var

# to view the variable's value
# var=src/seasonal/summer.csv
# cat $var

# repeat a command many times -----------------------------
# for filetype in gif jpg png; do echo $filetype; done

# repeat a command once for each file -----------------------------
# for filename in src/seasonal/*.csv; do echo $filename; done

# record the names of a set of files -----------------------------
# files=src/seasonal/*.csv
# for f in $files; do echo $f; done

# run many commands in a single loop -----------------------------
# for file in src/seasonal/*.csv; do head -n 2 $file | tail -n 1; done

# specify file's name that contains white space -----------------------------
# cat src/seasonal/'autumn rename.csv'

# print multiple outputs in a single loop -----------------------------
# for file in src/seasonal/*.csv; do echo $file; head -n 2 $file | tail -n 1; done
