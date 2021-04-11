# assigning variables -----------------------------

# assign without white spaces
var1='value'

# print out the variable content
echo $var1

# single, double, backticks -----------------------------
# - single quotes: shell interprets what is between literally
# - double quotes: shell interprets literally except using `$` & backticks
# - backticks / $(): used to create shell-within-a-shell, means that, shell runs the command & captures STDOUT back to a variable

# use double quotes to concate string with variable reference
first_name='mike'
last_name='frank'
echo "hi, my name is $first_name $last_name"

# use backticks / $() to create shell-within-a-shell
echo "shell-within-a-shell using 'backticks': `date`"
echo "shell-within-a-shell alternative way: $(date)"

# double bracket notation to calculate numbers in shell -----------------------------
double_bracket=$((5 + 7))
echo "calculate using 'double bracket notation': $double_bracket"

# `expr` is similar with double bracket notation -----------------------------
example_expr=$(expr 5 + 7)
echo "calculate using 'expr': $example_expr"

# use `bc` (basic calculator) to calculate decimal numbers -----------------------------
dec_sum=$(echo "5 + 3.5" | bc)
echo "using 'bc' to calcuclate decimal numbers: $dec_sum"

# use `scale` argument to specify how many decimal number behind comma
scale_dec=$(echo "scale=2; 10 / 3" | bc)
echo "using 'scale' to specify how many decimal number: $scale_dec"

# array -----------------------------
# declare array in bash, not using comma between items

# there are 2 ways of create array in bash:
# - declare without adding elements: declare -a my_first_array
# - create and add elements in the same time: my_first_array=(1 2 3)

# print out all of the elements in array
my_array=(1 3 5 2)
echo "print all of elements inside array: ${my_array[@]}"

# print length of an array
my_array=(1 3 5 2)
echo "print length of array: ${#my_array[@]}"

# manipulate array elements
my_array=(1 3 5 2)
my_array[1]=999
echo "manipulate elements in array: ${my_array[@]}"

# slicing array using `array[@]:N:M`
# `array[@]:N:M` with `N` is starting index, and `M` is how many elements to return
my_array=(87 43 31 64 78 43 2456 141 7 321 8)
echo "slicing array: ${my_array[@]:1:5}"

# append new element to array
my_array=(1 3 5 2)
my_array+=(4)
echo "append new el to array: ${my_array[@]}"

# associative arrays / dictionary -----------------------------
# the only way to create associative array is by using the `declare` syntax and `-A`
declare -A users
users=([name]='mike' [age]=42 [gender]='male')

echo "print all values from associative array: ${users[@]}"
echo "print value by key: ${users[name]}"
echo "print all the keys: ${!users[@]}"