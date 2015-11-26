#! /usr/bin/env python3

import numpy
price = numpy.array([37.94, 45.86, 55.49, 34.99, 45.88])
count = numpy.array([116, 144, 164, 104, 144])

per_item = price/count

print(per_item)
