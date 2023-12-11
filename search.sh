#!/bin/bash

echo 'Z1'
mkdir $2
echo 'Z2'
find $1 -type f -name "*.txt"
echo 'Z3'
find $1 -type l
echo 'Z4'
find $1 -type f -name "*.sh" -perm /a=x
echo 'Z5'
find $1 -type d -name "[AaDd]*"
echo 'Z6'
find $1 -type f -empty -user user
echo 'Z7'
find $1 -type f -group user -size +1MB
echo 'Z8'
find $1 -type f -mmin 120
echo 'Z9'
find $1 -type d -perm 1000
echo 'Z10'
find $1 -type f -perm /u=s -o -perm /g=s
echo 'Z11'
find /dev/ -type b -o -type c
echo 'Z12'
#find / -empty -type d -exec rmdir {} \;
find / -empty -type d -exec echo "usuwam "{} \;
echo 'Z13'
#find / -type f -size +100MB -exec mv {} $2 \;
find / -type f -size +100MB -exec echo "mv z "{}" do "$2 \;
echo 'Z14'
#find / -type d -name "Z*" -exec cp -R {} $2 \;
find / -type d -name "Z*" -exec echo "kopiuje "{}" do "$2 \;
