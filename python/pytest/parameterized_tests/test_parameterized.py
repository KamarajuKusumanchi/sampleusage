# from https://www.linuxjournal.com/content/testing-your-code-pythons-pytest

# To run the tests below
# pytest -v test_parameterized.py

import pytest
from mysum import mysum

@pytest.mark.parametrize('numbers,output', [
    ([], 0),
    ([10, 20, 30], 60),
    ([0.1, 1.2, 2.3, 3.4, 4.5], 11.5)])
def test_mysum(numbers, output):
    assert mysum(numbers) == output