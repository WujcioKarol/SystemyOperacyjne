#!/bin/bash

echo 'Z1'
mkdir $1
echo 'Z2'
cat /etc/passwd | grep $(whoami)
cd $1
echo 'Z3'
cut -d : -f 1,6,7 /etc/passwd | sort -r  > F1.csv
echo 'Z4'
cut -d : -f 7 /etc/passwd |uniq -u | uniq -u | rev | sort | rev > F2.csv
echo 'Z5'
cut -d : -f 1 /etc/passwd | tr [:lower:] [:upper:] > F3.csv

echo 'Z6'
number=`grep $(whoami) -n /etc/passwd | cut -d : -f 1`
let num1=$number-4
let num2=$number+4
cat /etc/passwd | head -n $num1 | tail -n 1 > F4.csv  && cat /etc/passwd | head -n $num2 | tail -n 1  > F4.csv

echo 'Z7'
diff -y /etc/passwd F4.csv > diffrences.txt
