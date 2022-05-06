# Formatted output speed
Compares the speed of formatted output of Fortran and C++

Output of ./time_mat.sh on WSL2:

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
