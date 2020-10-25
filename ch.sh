for i in $(seq 10 10); do echo $i;
	for j in $(seq 25 25); do echo $j;
	echo "2020"$i$j" 10:17:00"
	sudo date -s "2020-$i-$j 10:17:00";
	date;
	head -c 10 /dev/urandom | xxd -p | tee test;
	git add .;
	git commit -m "test "$i$j;
	done;
done;
