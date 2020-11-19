#! /bin/bash

#checking if setup has to run 
if [ ! -e "build/matmult" ]; then
  ./setup.sh
fi

cd build

echo 'running the matrix check:'

size=1500

./matmult $size $size $size 0 > serial.txt

echo 'serial calculation of the matrix finished'

./matmult $size $size $size 2 > parallel.txt

echo 'parallel calculation of the matrix finished'

diff -y  --suppress-common-lines serial.txt parallel.txt