#! /usr/bin/perl

# The script below shows how to pass command line options to perl scripts
#
# It is adopted from http://perldoc.perl.org/Getopt/Long.html which contains
# documentation on Getopt::Long module.

use strict;
use warnings;

use Getopt::Long;
my $data   = "file.dat";
my $length = 24;
my $height = 5.5;
my $verbose = 0;
GetOptions ("length=i" => \$length,    # numeric
            "height=f" => \$height,    # floating point
            "file=s"   => \$data,      # string
            "verbose!"  => \$verbose)  # flag
or die("Error in command line arguments\n");

print "data = $data, height = $height, file = $data, verbose = $verbose\n";

# make the script executable
# chmod +x using_getopt.pl
#
# sample usage and output
# 
# rajulocal@hogwarts:~/work/perl$ ./using_getopt.pl
# data = file.dat, height = 5.5, file = file.dat, verbose = 0
# rajulocal@hogwarts:~/work/perl$ ./using_getopt.pl --verbose
# data = file.dat, height = 5.5, file = file.dat, verbose = 1
# rajulocal@hogwarts:~/work/perl$ ./using_getopt.pl --verbose --no-verbose
# data = file.dat, height = 5.5, file = file.dat, verbose = 0
# rajulocal@hogwarts:~/work/perl$ ./using_getopt.pl --file 'index.dat'
# data = index.dat, height = 5.5, file = index.dat, verbose = 0
# rajulocal@hogwarts:~/work/perl$ ./using_getopt.pl --height=3.0
# data = file.dat, height = 3.0, file = file.dat, verbose = 0
# rajulocal@hogwarts:~/work/perl$ ./using_getopt.pl --height 7.5 --length 5
# data = file.dat, height = 7.5, file = file.dat, verbose = 0

