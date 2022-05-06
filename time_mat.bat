if exist temp_print.txt del temp_print.txt
if exist temp_fprintf.txt del temp_fprintf.txt
if exist a.exe del a.exe
gfortran -O3 -march=native write_mat_ij.f90
if exist a.exe timethis a.exe
if exist a.exe del a.exe
g++ -O3 -march=native fprintf_mat.cpp
if exist a.exe timethis a.exe
dir temp_print.xt temp_fprintf.txt
fc temp_print.txt temp_fprintf.txt
