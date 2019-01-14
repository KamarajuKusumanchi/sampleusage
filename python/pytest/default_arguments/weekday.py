from datetime import datetime
from calendar import monthrange
from dateutil.relativedelta import relativedelta

def last_weekday_of_month(doi, weekdoi=4, date_fmt='%Y%m%d'):
    """
    Get last week day of a month
    :param doi: date of interest. Specified in the date_fmt
    :param weekdoi: week day of interest specified as an integer, where
     Monday is 0 and Sunday is 6. Default is set to 4 for Friday.
    :param date_fmt: format of the doi
    :return: last week day in date_fmt
    """
    dt = datetime.strptime(doi, date_fmt)
    # Get the last day of the month
    xday = dt.replace(day = monthrange(dt.year, dt.month)[1])
    # Go back until we hit the week day of interest
    while xday.weekday() != weekdoi:
        xday += relativedelta(days=-1)
    return xday.strftime(date_fmt)