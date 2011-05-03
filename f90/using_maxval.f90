! Author      : Kamaraju S. Kusumanchi
! Email       : kamaraju at gmail dot com
! Last edited : Tue May  3 18:41:20 EDT 2011
!
! This is to examine the behaviour of maxval intrinsic function

program using_maxval
  implicit none
  
  real :: A(3,2), max_along_rows(3), max_along_cols(2)

  A(1,1) = 1.0
  A(2,1) = 7.0
  A(3,1) = 8.0

  A(1,2) = 4.0
  A(2,2) = 9.0
  A(3,2) = 5.0

  max_along_rows = maxval(A, DIM=2)
  max_along_cols = maxval(A, DIM=1)
  write(*,*) A
  write(*,*) max_along_rows
  write(*,*) max_along_cols
end program using_maxval

! To compile
! $gfortran -g -O2 -Wall -fbounds-check using_maxval.f90 -o using_maxval
!
! To execute:-
! $./using_maxval
!    1.0000000       7.0000000       8.0000000       4.0000000       9.0000000       5.0000000    
!    4.0000000       9.0000000       8.0000000    
!    8.0000000       9.0000000    
