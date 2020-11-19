#! /bin/bash

#make a build folder if there isn't one already

echo 'setup started'

if [ ! -d "build/" ]; then
  mkdir build
  echo 'created folder build'
fi

echo 'compiling the code'

g++ -fopenmp -Wall -o build/matmult source/matmult.cpp