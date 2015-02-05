#! /bin/tcsh -f

# google searches | tcsh if statement
# google searches | execute only parts of shell script

set def_name    = 0
set def_gender  = 0
set def_rainbow = 0
set def_month   = 1

if ($def_name) then
set name = ("kamaraju")
foreach i ($name)
  echo "name = " $i
end
endif

if ($def_gender) then
set gender = ("Male" "Female")
foreach i ($gender)
  echo "gender = " $i
end
endif

if ($def_rainbow) then
set color = ("violet" "indigo" "blue" "green" "yellow" "orange" "red")
foreach i ($color)
  echo "color = " $i
end
endif

# To specify a list that spans over multiple lines
# the backslashes below are important. The stanza below will not work without them.
if ($def_month) then
set month = ( \
        "January"   \
        "February"  \
        "March"     \
        "April"     \
        "May"       \
        "June"      \
        "July"      \
        "August"    \
        "September" \
        "October"   \
        "November"  \
        "December"  \
        )
foreach i ($month)
    echo "month = " $i
end
endif
