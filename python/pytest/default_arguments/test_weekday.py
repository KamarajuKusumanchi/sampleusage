# To run the tests
# python -m pytest test_weekday.py


import pytest
from weekday import last_xday_of_month


@pytest.mark.parametrize('args, kwargs, expected', [
    (['20181205'], {}, '20181228'),
    (['20181205'], {'weekdoi': 4}, '20181228'),
    (['20181205'], {'weekdoi': 3}, '20181227'),
    (['20181205'], {'weekdoi': 4, 'date_fmt': '%Y%m%d'}, '20181228')
])
def test_last_weekday_of_month(args, kwargs, expected):
    got = last_xday_of_month(*args, **kwargs)
    assert got == expected, \
        'Last weekday of month logic is broken. got = {}, ' \
        'expected = {}'.format(got, expected)
