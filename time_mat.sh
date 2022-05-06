#!/bin/bash
set -x #echo on
rm -f a.out temp_print.txt temp_fprintf.txt
gfortran -O3 -march=native write_mat_ij.f90
time ./a.out
rm -f a.out
g++ -O3 -march=native fprintf_mat.cpp
time ./a.out
ls -l temp_print.txt temp_fprintf.txt
diff temp_print.txt temp_fprintf.txt
