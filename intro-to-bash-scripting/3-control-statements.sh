# if statement -----------------------------
x="coldplay"
if [ $x == "coldplay" ]; then
    echo "$x is a great band!"
else
    echo "$x is not great band"
fi

# arithmetic if statement -----------------------------
x=10
if (($x > 5)); then
    echo "$x is more than 5!"
fi

# arithmetic if statement can also user square brackets & an arithmetic flag:
# - `-eq`: equal to
# - `-ne`: not equal to
# - `-lt`: less than
# - `-le`: less than or equal to
# - `-gt`: greater than
# - `-ge`: greater than or equal to

x=20
if [ $x -gt 5 ]; then
    echo "$x is more than 5!"
fi

# other bash conditional flags:
# - `-e` if the file exists
# - `-s` if the file exists and has size greater than zero
# - `-r` if the file exists and readable
# - `-w` if the file exists and writable

# AND & OR operator:
# - `&&``: and
# - `||`: or

# multiple conditions -----------------------------

# use seperate square bracket
x=7
if [ $x -gt 5 ] && [ $x -lt 11 ]; then
    echo "$x is more than 5 and less than 11!"
fi

# use double square bracket
x=7
if [[ $x -gt 5 && $x -lt 11 ]]; then
    echo "$x is more than 5 and less than 11!"
fi

# if with shell-within-a-shell -----------------------------
# grep -q means don't show the result
if $(grep -q 3 text-collections/test.txt); then
    echo "this is line 3"
fi

# for loop -----------------------------

# simple for loop
for x in 1 2 3
do
    echo "simple for loop: $x"
done

# for loop number ranges
# {start..stop..increment}
for x in {1..5..2}
do
    echo "for loop number ranges: $x"
done

# for loop three expression syntax
for ((x=2; x<=16; x+=2))
do
    echo "for loop three expression syntax: $x"
done

# shell-within-a-shell to for loop
# grep -i means ignore the case sensitive
for file in $(ls text-collections/ | grep -i "text")
do
    echo "shell-within-a-shell to for loop: $file"
done

# while statement -----------------------------
x=98
while [ $x -le 100 ];
do
    echo "while statement: $x"
    ((x+=1))
done

# case statement -----------------------------
case $(cat text-collections/word.txt) in
    *lasting*)
    cp text-collections/word.txt text-collections/changed.txt ;;
    *unkown*|*Lorem*)
    cp text-collections/word.txt text-collections/flexible.txt ;;
    *)
    echo "no found" ;;
esac