! Author      : Kamaraju S. Kusumanchi
! Email       : kamaraju at gmail dot com
! Last edited : Tue Jul 27 20:10:23 EDT 2010
!
! To compile:-
! gfortran -g -O2 -Wall -fbounds-check nested_reshape_01.f90 -o nested_reshape_01
!
! To execute:-
! ./nested_reshape_01
!
! output:-
!   1.0000000       2.0000000       3.0000000       4.0000000       5.0000000       6.0000000       7.0000000       8.0000000
!   9.0000000       10.000000       11.000000       12.000000       13.000000       14.000000       15.000000       16.000000
!   1.0000000       9.0000000       2.0000000       10.000000       3.0000000       11.000000       4.0000000       12.000000
!   5.0000000       13.000000       6.0000000       14.000000       7.0000000       15.000000       8.0000000       16.000000

program nested_reshape_01
  implicit none
  real :: k(8,2)
  real :: o(8,2)

  k = reshape((/1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0, 11.0, &
  12.0, 13.0, 14.0, 15.0, 16.0/), (/8,2/))

  write(*,*) k(:,1)
  write(*,*) k(:,2)
  o = reshape(reshape(k, (/2,8/), order=(/2,1/)), (/8,2/))
  write(*,*) o(:,1)
  write(*,*) o(:,2)
end program
