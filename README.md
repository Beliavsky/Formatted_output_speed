# Formatted output speed
Compares the speed of formatted output of matrices of floating point numbers with Fortran and C++ printf.

Output of ./time_mat.sh on WSL2. Here Fortran is much faster than C++.

```
+ rm -f a.out temp_print.txt temp_fprintf.txt
+ gfortran -O3 -march=native write_mat_ij.f90
+ ./a.out

real	0m6.446s
user	0m4.739s
sys	0m0.233s
+ rm -f a.out
+ g++ -O3 -march=native fprintf_mat.cpp
+ ./a.out

real	0m25.867s
user	0m3.971s
sys	0m3.050s
+ ls -l temp_print.txt temp_fprintf.txt
-rwxrwxrwx 1 bingy bingy 105213000 May  6 07:21 temp_fprintf.txt
-rwxrwxrwx 1 bingy bingy 105213000 May  6 07:20 temp_print.txt
+ diff temp_print.txt temp_fprintf.txt
```

Output of time_mat.bat on Windows. Here Fortran is only a bit faster than C++, and both
programs are faster on plain Windows than WSL2.

```
c:\fortran\test\Formatted_output_speed>gfortran -O3 -march=native write_mat_ij.f90 
TimeThis :  Elapsed Time :  00:00:03.858

c:\fortran\test\Formatted_output_speed>g++ -O3 -march=native fprintf_mat.cpp 
TimeThis :  Elapsed Time :  00:00:04.676
Comparing files temp_print.txt and TEMP_FPRINTF.TXT
FC: no differences encountered
```
