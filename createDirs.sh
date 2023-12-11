#!/bin/bash

echo 'Z1'
mkdir $1
echo 'Z2'
cd $1


echo 'Z3'
mkdir d1
mkdir d1/d1
touch d1/ttxt

mkdir d2
mkdir d2/d2.1
touch d2/d2.1/fcsv
mkdir d3

mkdir d3/d3.1
mkdir d3/d3.2
touch d3/f2.csv
mkdir Aa
mkdir Bb
mkdir Cc

echo 'Z4'
mv ./d1/ttxt ./d1/d1/ttxt
echo 'Z5'
cp ./d2/d2.1/fcsv ./d1/fcsv

echo 'Z6'
mv ./Aa ./Aa1

echo 'Z7'
ls -R -d *1
ls -R -d *2
ls -R -d ./d1/*1

ls -R -d ./d2/*1

ls -R -d ./d3/*1
ls -R -d ./d3/*2

echo 'Z8'
du . -d 1 -h
