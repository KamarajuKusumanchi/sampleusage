! Author      : Kamaraju S. Kusumanchi
! Email       : kamaraju at gmail dot com
! Last edited : Sat Jul 31 22:24:35 EDT 2010
!
! To examine the behaviour of minloc function when the array indexing starts
! from zero instead of 1.

program using_minloc_01
  implicit none
  real :: a(1:5) = (/-1.0, -2.0, 1.0, 3.0, -3.0/)
  real :: b(0:4) = (/-1.0, -2.0, 1.0, 3.0, -3.0/)

  write(*,*) "a = ", a
  write(*,*) "b = ", b

  write(*,*) 'minloc(a(:)) = ', minloc(a(:))
  write(*,*) 'minloc(b(:)) = ', minloc(b(:))
  write(*,*) 'minloc(a(1:5)) = ', minloc(a(1:5))
  write(*,*) 'minloc(b(0:4)) = ', minloc(b(0:4))
end program using_minloc_01

! To compile:-
! $gfortran -g -O2 -Wall -fbounds-check using_minloc_01.f90 -o using_minloc_01

! To execute:-
! $./using_minloc_01
!
! output:-
!  a =   -1.0000000      -2.0000000       1.0000000       3.0000000      -3.0000000
!  b =   -1.0000000      -2.0000000       1.0000000       3.0000000      -3.0000000
!  minloc(a(:)) =            5
!  minloc(b(:)) =            5
!  minloc(a(1:5)) =            5
!  minloc(b(0:4)) =            5

