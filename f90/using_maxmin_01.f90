! Author      : Kamaraju S. Kusumanchi
! Email       : kamaraju at gmail dot com
! Last edited : Wed Jul 28 07:44:23 EDT 2010
!
! This is to examine the behaviour of max(), min() intrinsics

program maxmin
    implicit none
    real :: a, b
    a=3.2; b=-5.4
    write(*,*) min(a, b)
    write(*,*) max(a, b)
    write(*,*) MAX( (/2, 7, 3, 5, 9, 1/), (/1, 9, 5, 3, 7, 2/))
    write(*,*) MIN( (/2, 7, 3, 5, 9, 1/), (/1, 9, 5, 3, 7, 2/))
end program maxmin

! To compile:-
! $gfortran -g -O2 -Wall -fbounds-check using_maxmin_01.f90 -o using_maxmin_01
!
! To execute:-
! $./using_maxmin_01
!
! output:-
!   -5.4000001
!    3.2000000
!            2           9           5           5           9           2
!            1           7           3           3           7           1
