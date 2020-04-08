# Sample script to show how to pass a list as a command line argument
#
# Ref:-
# https://stackoverflow.com/questions/15753701/how-can-i-pass-a-list-as-a-command-line-argument-with-argparse

import argparse

def parse_arguments():
    parser = argparse.ArgumentParser(
        description='Sample script to show how to pass a list'
    )
    # You can either use the nargs option or the 'append' setting of the action
    # option (depending on how you want the user interface to behave).
    # nargs='+' takes 1 or more arguments, nargs='*' takes zero or more.
    # UI with nargs: -l val1 val2 val3
    # UI with action='append': -l val1 -l val2 -l val3
    parser.add_argument('-l', '--my-list', nargs='+', help='Required list of items', required=True)
    # parser.add_argument('-l', '--my-list', action='append', help='Required list of items', required=True)

    parser.add_argument('-v', '--verbose', action='store_true',
        default=False, dest='verbose', help='show arguments')

    args = parser.parse_args()

    if args.verbose:
        for key, value in args._get_kwargs():
            if value is not None:
                print(key, value)

    return args

args = parse_arguments()

# sample run:
#
# $ python ./pass_list.py -l 1 2 'raju' -v
# my_list ['1', '2', 'raju']
# verbose True
#
# Note: all list arguments are converted as strings.
