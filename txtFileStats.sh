

echo "Z1"
file -i $1
echo "Z2"
wc $1 -l
echo "Z3"
wc -m $1 
echo "Z4"
du -h $1
echo "Z5"
cat $1 | grep $2 | wc -l
echo "Z6"
cat $1 | grep -v $2 | wc -l
echo "Z7"
cat $1 | head -n 5 | tail -n 1
