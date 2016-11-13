#! /usr/bin/env python3
import os
import pandas as pd

def df_to_gzip(df, out_file, out_dir, debug=False):
    fname = os.path.join(out_dir, out_file)
    fname = os.path.abspath(os.path.expanduser(fname))

    if not os.path.exists(out_dir):
        os.makedirs(out_dir, exist_ok=True)

    if debug:
        print('writing:', fname)
    df.to_csv(fname, index=False, compression='gzip')

if __name__ == "__main__":
    letters = ['a', 'b', 'c']
    words = ['apple', 'ball', 'cat']
    df = pd.DataFrame(
        {'letter' : letters,
         'words' : words})
    df_to_gzip(df, 'alphabets.gz', '~/x', debug=True)

# Sample run
#  % pwd
# /home/rajulocal/work/github/sampleusage/python/pandas
#
#  % ./df_to_gzip.py
# writing: /home/rajulocal/x/alphabets.gz
#
#  % zcat ~/x/alphabets.gz
# letter,words
# a,apple
# b,ball
# c,cat
#
#  % rm ~/x/alphabets.gz
# rm: remove regular file ‘/home/rajulocal/x/alphabets.gz’? y
# removed ‘/home/rajulocal/x/alphabets.gz’
