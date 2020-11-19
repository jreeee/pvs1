If you want to build the programm you can either run setup.sh or matrixcheck.sh

setup.sh will create a build folder if there isn't one already.
Then the script will try to compile the file (g++ and openmp needed).
After that the setup is finished.

matrixcheck.sh will check if build/matmult already exists.
If it doesn't, it runs setup.sh, otherwise it just continues.
It then writes the output of matmult using one core to the file serial.txt
After that it does the same for the parallelized vesion (into parallel.txt)
It then uses diff to show the differences between the two files.

*note: matrixcheck does not recompile the program while setup does.
       You can parse a matrix size as an argument when running it.
       ./matrixcheck.sh <integer>

Of course you can also run the matmult yourself by typing ./build/matmult
it has a couple of different modes: ./matmult <NumRowA> <NumColA> <NumColB> [mode]
the mode is optional and determines if the progamm is run in serial or parallel:

0 - serial,   verbose (default value)
1 - serial,   quiet
2 - parralel, verbose
3 - parallel, quiet