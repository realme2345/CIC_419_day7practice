#!/bin/bash -x
read -p " enter the values of n : " n
x=0
y=1
i=2
echo $x
echo $y
while [ $i -lt $n ]
do
  ((i++))
  z=$(( $x + $y ))
  echo $z
  x=$y
  y=$z
done
r=" fib $n "
echo $r

