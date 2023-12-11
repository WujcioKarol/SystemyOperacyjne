function div(){
	if [ $(($1-$2)) -eq 0 ];then
		echo -e "Error! \t Mianownik == 0"
		exit -1;
	fi
	echo $(($(($1+$2))/$(($1-$2))));
}

function factorial_rec(){
	if [[ $# -gt 1 ]]; then
		echo -e "Error!\tIlosc argumentow musi byc == 1"
		exit -1;
	fi
	if [[ $1 -le 1 ]]; then
		echo 1;
	else
		echo $(($1 * $(factorial_rec $(($1-1)))));
	fi
}

function factorial_iter(){
	if [[ $# -gt 1 ]]; then
                echo -e "Error!\tIlosc argumentow musi byc == 1"
                exit -1;
        fi
        wynik=1;
	for (( i=$1; i>=1;i--));do
		wynik=$(( $wynik*$i ));
	done
	echo $wynik;
}
function sum(){
	for num in $@; do
		if [[ $num =~ [+-]?([0-9])+ ]]; then
			wynik=$(($wynik+$num))
		fi
	done
	echo $wynik;
}
div $1 $2;
factorial_rec $1;
factorial_iter $2;
sum $@;
