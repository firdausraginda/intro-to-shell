# some important shell commands: -----------------------------
# - egrep: filters input based on regex pattern matching
# - cat: concatenates file contens line-by-line
# - head & tail: return only first / last `-n` lines
# - wc: does a word or line count (`-w` for word count, & `-l` for line count)
# - sed: does pattern-matched string replacement
# - uniq: to return only uniq value (`-c` to count unique value)

# STDIN - STDOUT - STDERR -----------------------------
# there are 3 streams in bash scripting:
# STDIN (standard input): a stream of data into the program
# STDOUT (standard output): a stream of data out of the program
# STDERR (standard error): errors in program

# `2> /dev/null` redicrecting STDERR to be deleted
# `1> /dev/null` equal to STDOUT

# STDIN vs ARGV -----------------------------
# - ARGV is the array of all the arguments
# - each argument can be accessed via the `$` notation, `$1` for 1st arg, `$2` for 2nd arg, etc.
# - $@ means return all arguments in ARGV
# - $# return the length of arguments

# ARGV example -----------------------------

# inside args.sh file:

# ///////////////////////////
# echo $1
# echo $2
# echo $@
# echo "there are $# arguments"
# ///////////////////////////

# run command: bash args.sh one two three four five

# result:
# ///////////////////////////
# one
# two
# one two three four five
# there are 5 arguments
# ///////////////////////////
