program main
implicit none
integer :: i, iter, iu, j
integer, parameter :: n=10**2, niter = 1000
real :: x(n,n)
do j=1,n
   do i=1,n
      x(i,j) = real(i+j)
   end do
end do
open (newunit=iu,file="temp_print.txt",action="write",status="replace")
do iter=1,niter
   do i=1,n
      write (iu,"(*(1x,f0.6))") x(i,:)
   end do
end do
end program main
