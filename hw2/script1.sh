DD=/home/ifilippov/homework/hw2

for file in $( ls $DD/*.tsv )
do
	name=$( basename $file | cut -d. -f1 )
	echo $name
	mkdir $DD/$name
	mv $file $DD/$name
done
