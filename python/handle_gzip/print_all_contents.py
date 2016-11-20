#! /usr/bin/env python3

import urllib.request
import gzip


def print_all_content():
    debug = False

    # The address can also be a url such as
    # http://httpredir.debian.org/debian/dists/" + distribution \
    #     + "/" + section + "/binary-amd64/Packages.gz"
    address = 'file:///home/rajulocal/work/github/sampleusage/python/' + \
        'handle_gzip/package_description_sample.gz'
    if debug:
        print('reading from', address, "\n")

    try:
        response = urllib.request.urlopen(address)
        with gzip.open(response, 'rt') as gzipFile:
            for line in gzipFile:
                print(line.rstrip())
    except:
        print("Unable to read from", address)


if __name__ == "__main__":
    print_all_content()
