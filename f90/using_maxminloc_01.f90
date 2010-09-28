! Author      : Kamaraju S. Kusumanchi
! Email       : kamaraju at gmail dot com
! Last edited : Sat Jul 31 22:24:23 EDT 2010
!
! To examine the behaviour of maxloc(), minloc() functions

program maxminloc_01
  implicit none
  integer :: i
  integer, dimension(3, 4) :: a
  
  write(*,*) "MAXLOC( (/2, 7, 3, 5, 9, 1/) ) returns", MAXLOC( (/2, 7, 3, 5, 9, 1/) )
  write(*,*) "MAXVAL( (/2, 7, 3, 5, 9, 1/) ) returns", MAXVAL( (/2, 7, 3, 5, 9, 1/) )
  write(*,*) "MINLOC( (/2, 7, 3, 5, 9, 1/) ) returns", MINLOC( (/2, 7, 3, 5, 9, 1/) )
  write(*,*) "MINVAL( (/2, 7, 3, 5, 9, 1/) ) returns", MINVAL( (/2, 7, 3, 5, 9, 1/) )
  
  a = reshape((/0, -5, 8, 3, 3, 4, -1, 2, 1, 5, 6, -4/), shape=(/3, 4/), &
  order=(/2,1/))

  do i=1,3
      write(*,*) 'a(',i,',:) = ', a(i,:)
  end do

  write(*,*) "MAXLOC(a, MASK = a .LT. 5) returns", MAXLOC(a, MASK = a .LT. 5)
  write(*,*) "MAXVAL(a, MASK = a .LT. 5) returns", MAXVAL(a, MASK = a .LT. 5)
  write(*,*) "MAXLOC(a, MASK = a .LT. 4) returns", MAXLOC(a, MASK = a .LT. 4)
  write(*,*) "MAXVAL(a, MASK = a .LT. 4) returns", MAXVAL(a, MASK = a .LT. 4)
end program maxminloc_01

! To compile:-
! $gfortran -g -O2 -Wall -fbounds-check using_maxminloc_01.f90 -o using_maxminloc_01
!
! To execute:-
! $./using_maxminloc_01
!
! output:-
! MAXLOC( (/2, 7, 3, 5, 9, 1/) ) returns           5
! MAXVAL( (/2, 7, 3, 5, 9, 1/) ) returns           9
! MINLOC( (/2, 7, 3, 5, 9, 1/) ) returns           6
! MINVAL( (/2, 7, 3, 5, 9, 1/) ) returns           1
! a(           1 ,:) =            0          -5           8           3
! a(           2 ,:) =            3           4          -1           2
! a(           3 ,:) =            1           5           6          -4
! MAXLOC(a, MASK = a .LT. 5) returns           2           2
! MAXVAL(a, MASK = a .LT. 5) returns           4
! MAXLOC(a, MASK = a .LT. 4) returns           2           1
! MAXVAL(a, MASK = a .LT. 4) returns           3

