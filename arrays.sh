#!/bin/bash

function bubble_sort(){
	arr=("$@")
	tablica=${#arr[@]}
	for ((i=0;i<tablica;i++)); do
		for ((j=0; j<tablica;j++)); do
			if [[ ${arr[j]} -gt ${arr[$((j+1))]} ]]; then
				temp=${arr[j]}
				arr[$j]=${arr[(($j+1))]}
				arr[$((j+1))]=$temp
			fi
		done
	done
	echo ${arr[@]}
}


function create_array(){
if [[ $1 -gt 0 && $2 -gt 0 ]]; then
	declare -A tablica;
	for ((i=1;i<=$1;i++)); do
		for ((j=1;j<=$2;j++)); do
			tablica[$i,$j]=$(($i*$j))
		done
	done
echo "Tablica:"
for ((i=1;i<=$1;i++)); do
                for ((j=1;j<=$2;j++)); do
                        printf "%4d" ${tablica[$i,$j]}
                done
		echo ""
        done
else
echo "Podaj 2 argumenty wieksze od 0"
exit -1
fi
}


function calka(){
arr=("$@")
calka=()
for ((i=0;i<$(($#-1));i++)); do
	x1=${arr[$i]}
	x2=${arr[$(($i+1)) ]}
	suma=$( echo " $x1 + $x2 "| bc -l )
	value=$(echo "$suma/2"| bc -l)
	calka+=($value)
done
echo "Calka jest rowna"
#echo $calka
wynik=0.0
for i in ${calka[@]}; do
wynik=$(echo "$wynik+$i"|bc -l)
done
echo $wynik
}
bubble_sort $@;
#create_array $@;
#calka $@;
