! Author      : Kamaraju S. Kusumanchi
! Email       : kamaraju at gmail dot com
! Last edited : Wed Jul 28 07:44:23 EDT 2010
!
! To see how an exit statement works in a do loop
! Provides a way to access just the lower diagonal, diagonal elements in a 2D array


program using_do_exit_01
  implicit none

  integer :: i, j

  do i=1,5
    do j=1,5
      if (j>i) then
        exit
      end if
      write(*,*) "i = ", i, " j = ", j
    end do
    write(*,*) "i = ", i
  end do
end program using_do_exit_01

! To compile:-
! gfortran -g -O2 -Wall -fbounds-check using_do_exit_01.f90 -o using_do_exit_01
!
! To execute:-
! $./using_do_exit_01
!
! output:-
!  i =            1  j =            1
!  i =            1
!  i =            2  j =            1
!  i =            2  j =            2
!  i =            2
!  i =            3  j =            1
!  i =            3  j =            2
!  i =            3  j =            3
!  i =            3
!  i =            4  j =            1
!  i =            4  j =            2
!  i =            4  j =            3
!  i =            4  j =            4
!  i =            4
!  i =            5  j =            1
!  i =            5  j =            2
!  i =            5  j =            3
!  i =            5  j =            4
!  i =            5  j =            5
!  i =            5
