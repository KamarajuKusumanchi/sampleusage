! Author      : Kamaraju S. Kusumanchi
! Email       : kamaraju at gmail dot com
! Last edited : Mon Sep 27 21:12:19 EDT 2010
!
! shows how to read input when the number of lines is not known apriori

program read_input
  implicit none
  ! read input from standard input until ctrl-d is encountered.

  integer :: ios, lines_read
  character(len=500) :: record

  lines_read = 0
  do
    ! In order to read strings with spaces, commas in them,
    ! use '(A)' instead of *
    read(*,'(A)',iostat=ios) record
    if (ios .lt. 0) then
      write(*,'(A)') 'end of input reached'
      exit
    else
      lines_read = lines_read+1
      write(*,'(A,I0,2A)') 'line = ', lines_read, ': ', trim(record)
    end if
  end do

end program read_input

! To compile:-
! $gfortran -g -O2 -Wall -fbounds-check read_input_01.f90 -o read_input_01
!
! Sample execution sequence:-
!
! raju@kusumanchi:~/work/fortran/read_input_01$ ls
! input_file  read_input_01  read_input_01.f90
!
! raju@kusumanchi:~/work/fortran/read_input_01$ cat input_file
! coke
! diet coke
! pepsi
! diet pepsi
! hfcs = high fructose corn syrup
!
! raju@kusumanchi:~/work/fortran/read_input_01$ sed -n '2,10p' < input_file
! diet coke
! pepsi
! diet pepsi
! hfcs = high fructose corn syrup
!
! raju@kusumanchi:~/work/fortran/read_input_01$ sed -n '2,10p' < input_file | ./read_input_01
! line = 1: diet coke
! line = 2: pepsi
! line = 3: diet pepsi
! line = 4: hfcs = high fructose corn syrup
! end of input reached

