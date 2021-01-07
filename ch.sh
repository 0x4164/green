for i in $(seq 1 1); do echo $i;
	for j in $(seq 7 8); do echo $j;
	echo "2021"$i$j" 10:17:00"
	sudo date -s "2021-$i-$j 10:17:00";
	date;
	head -c 10 /dev/urandom | xxd -p | tee test;
	git add .;
	git commit -m "test "$i$j;
	done;
done;
