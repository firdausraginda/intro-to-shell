# where am i? -----------------------------

# pwd (print working directory): print out path of current working directory -----------------------------
# pwd

# ls (listing): to list the files inside the directory -----------------------------

# to list 1st level of a directory
# ls

# to list all levels of a directory
# ls -R

# to list files and giving sign `/` for a directory type and `*` for runnable program
# ls -F


# cd (change directory): move to another directory -----------------------------
# cd src/people/

# cd ../: to move up directory -----------------------------
# cd ~/../

# cp (copy): to copy file -----------------------------

# copy to the same directory & rename file
# cp src/seasonal/autumn.csv src/seasonal/copied-autumn.csv

# to copy multiple files to different directory
# cp seasonal/autumn.csv seasonal/summer.csv backup

# mv (move): move a file to different directory -----------------------------
# mv seasonal/copied-autumn.csv backup

# mv (move): this command can also be used to rename a file -----------------------------
# mv seasonal/autumn.csv seasonal/autumn-rename.csv

# rm (remove): to delete file(s) -----------------------------
# rm seasonal/winter.csv

# rmdir (remove directory): to delete directory -----------------------------
# rmdir dummy-directory