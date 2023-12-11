#!/bin/bash
echo "Z1"
mkdir $1
cd $1
echo "Z2"
mkdir D1
mkdir D2
mkdir D3
mkdir D4

touch ./D2/F1.txt
touch ./D3/F1.txt
touch ./D4/F1.txt

echo "Z3"
ln -s /etc/passwd ./D1
echo "Z4"
readlink ./D1/passwd
echo "Z5"
ln ./D3/F1.txt ./D2/F2.txt
echo "Z6"
chmod 600 ./D2/F2.txt

echo "Z7"
chown users ./D2/F2.txt
echo "Z8"
chgrp users ./D3
echo "Z9"
chmod -x ./D3
echo "Z10"
chmod -w ./D2
touch ./D2/X.txt
echo "Z11"
chmod -r ./D4
ls ./D4
echo "Z12"
chmod +t ./D4

echo "Z13"
touch ./D1/scr1.sh
chmod u+x,g+x ./D1/scr1.sh
echo "Z14"
chmod u+s,g+s ./D1/scr1.sh
