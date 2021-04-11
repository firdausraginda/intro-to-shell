# basic function -----------------------------
print_hello() {
 echo "hello world"
}

print_hello

# function with for loop -----------------------------
print_filename() {
    for file in $@
    do
        echo "this file has name: $file"
    done
}

print_filename text-collections/*

# scope in bash function -----------------------------

# unlike any other programming languages, all variables in bash are global by default
declare_var() {
    block_var='this is glob var'
}

declare_var
echo "global var: $block_var"

# restricting scope in bash function
declare_var2() {
    local block_var2='dummy var'
}

declare_var2
echo "local var can't be accessed from outside of the func $block_var2"

# return values -----------------------------
# in bash, `return` only used to determine if the func was a success (0) or failure.
# there are 2 ways to return val from func in bash:
# - assign to a glob var
# - `echo` and captured with shell-within-a-shell

# example return value using `echo` and captured with shell-within-a-shell
convert_temp() {
    echo $(echo "scale=2; ($1 - 32) * 5 / 9" | bc )
}

result_convert_temp=$(convert_temp 30)
echo "return value using echo: $result_convert_temp"

# scheduling with cron -----------------------------
# can create file using `nano` to write the scheduling

# to see what schedules are currently running:
# `crontab -l`

# run every 01.15 am every day & month
# 5 1 * * * bash myscript.sh

# run every 02.14 pm every sunday
# 15 14 * * 7 bash myscript.s

# run at 15, 30, & 45 minutes for whatever hours are specified by the second star
# 15,30,45 * * * *

# run every 15 minutes
# */15 * * * *