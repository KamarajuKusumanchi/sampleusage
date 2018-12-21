# From https://www.linuxjournal.com/content/testing-your-code-pythons-pytest

# To run the tests below
# pytest -v test_basic.py

# The three tests below can be combined into a single function that runs
# with three different data sets. This is called 'parameterized testing'.
# See test_parameterized.py on how to do it.

from mysum import mysum

def test_sum_integers():
    assert mysum([0,1,2,3,4]) == 10

def test_sum_floats():
    assert mysum([0.1,1.2,2.3,3.4,4.5]) == 11.5

def test_sum_nothing():
    assert mysum([]) == 0