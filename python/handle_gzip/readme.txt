To run the scripts

Step 1: gzip the data file by running

  gzip package_description_sample

This will create package_description_sample.gz . Note down the absolute path of
this file.

Step 2: Change the input file location

The scripts hardcode the gzip file location as
    address = 'file:///home/rajulocal/work/github/sampleusage/python/' + \
        'handle_gzip/package_description_sample.gz'

Change it to the absolute path of the file created in step 1.

Step 3: Run the scripts. For example
  ./print_all_contents.py

After experimenting with the scripts, unzip the data file
  gunzip package_description_sample.gz
In any case, do not commit .gz files to git repository as compressed files do
not work well with version control.
