#! /bin/bash

#checking if setup has to run 
if [ ! -e "build/matmult" ]; then
  ./setup.sh
fi

cd build

echo 'running the matrix check:'

#checking the argument

if [ $1 -gt 0 ]; then
  echo 'matrices will have the size' $1
  size=$1
else
  echo 'defaulting to size 1000'
  size=1000
fi

#calculating the matrices

./matmult $size $size $size 0 > serial.txt

echo 'serial calculation of the matrix finished'

./matmult $size $size $size 2 > parallel.txt

echo 'parallel calculation of the matrix finished'
echo 'result:'

#checking for differences

diff -y --suppress-common-lines serial.txt parallel.txt