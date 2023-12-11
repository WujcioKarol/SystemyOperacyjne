#!/bin/bash
echo 'Z1'
mkdir $2
echo 'Z2'
cp $1 $2 -r
echo 'Z3'
cd $2
echo 'Z4'
ls -l .
echo 'Z5'
tree
echo 'Z6'
pwd
echo 'Z7'
cd -
echo 'Z8'
rm -r $2
