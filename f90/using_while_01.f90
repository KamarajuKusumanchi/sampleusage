! Author      : Kamaraju S. Kusumanchi
! Email       : kamaraju at gmail dot com
! Last edited : Mon Sep 27 21:08:41 EDT 2010
!
! To examine the behaviour of while function

program using_while
  implicit none

  ! 'end' is a keyword. So the variable is declared as 'endd'.
  integer :: st, endd, dt

  st = 1;
  endd = 100
  dt = 10;

  do while (st < endd)
    write(*,*) "st = ", st
    st = st + dt
  end do
end program using_while

! To compile:-
! $ gfortran -g -O2 -Wall -fbounds-check using_while_01.f90 -o using_while_01
!
! To execute:-
! $ ./using_while_01
!
! output:-
!  st =            1
!  st =           11
!  st =           21
!  st =           31
!  st =           41
!  st =           51
!  st =           61
!  st =           71
!  st =           81
!  st =           91

