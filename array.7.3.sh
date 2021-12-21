#!/bin/bash -x
read -p " Enter the value of n :" n
for (( i=1; i<=$n/2; i++ ))
do
 if [ $(($n%$i)) -eq 0 ]
 then
 echo $i
 for ((j=2; j<$i; j++ ))
 do
   a=$(( $i%$j ))
   result[$i]=$i
   if [ $a -eq 0 ]
   then
    echo " $i it ia not a prime number " ;
   break
   else
    echo " $i it is a prime number " ;
   break
   fi
 done
 fi
done
echo ${!result[@]}


