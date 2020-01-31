for i in $(seq 1 9); do echo $i;
	for j in $(seq 31 31); do echo $j;
	echo "2020"$i$j" 09:17:00"
	sudo date -s "2020-$i-$j 09:17:00";
	date;
	head -c 10 /dev/urandom | xxd -p | tee test;
	git add .;
	git commit -m "test "$i$j;
	done;
done;
