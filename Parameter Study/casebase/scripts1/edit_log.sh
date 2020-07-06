#!/bin/bash

#watch -n1  command

while true;
do

cat log | grep -w 'Time' 	| cut -d' ' -f3    		> tmp1.txt
cat log | grep 'Solving for Ux' | cut -d' ' -f9 | tr -d ',' 	> tmp2.txt
cat log | grep 'Solving for Uy' | cut -d' ' -f9 | tr -d ',' 	> tmp3.txt
cat log | grep 'Solving for p' 	| cut -d' ' -f9 | tr -d ',' 	> tmp4.txt
awk 'NR%6==1' tmp4.txt 						> tmp5.txt 

paste tmp1.txt tmp2.txt tmp3.txt tmp5.txt > log_clean.txt




if
	tail log | grep 'End';	
then

	rm tmp1.txt 		> /dev/null 2>&1
	rm tmp2.txt 		> /dev/null 2>&1
	rm tmp3.txt 		> /dev/null 2>&1
	rm tmp4.txt 		> /dev/null 2>&1
	rm tmp5.txt 		> /dev/null 2>&1
	#rm log_clean.txt 	> /dev/null 2>&1

	echo 'End of program: yahoooo'
	exit 0
fi



# run if user hits control-c
control_c()
{
  echo -en "\n*** Ouch! You pressed crtl-c. Exiting ***\n"
  #cleanup
	rm tmp1.txt 		> /dev/null 2>&1
	rm tmp2.txt 		> /dev/null 2>&1
	rm tmp3.txt 		> /dev/null 2>&1
	rm tmp4.txt 		> /dev/null 2>&1
	rm tmp5.txt 		> /dev/null 2>&1
	#rm log_clean.txt 	> /dev/null 2>&1
  exit 0
}
 
# trap keyboard interrupt (control-c)
trap control_c SIGINT


done



