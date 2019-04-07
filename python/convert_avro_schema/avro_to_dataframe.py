import pandas as pd
from fastavro import reader

def avro_to_df(filePath):
    with open(filePath, 'rb') as fo:
        records = [r for r in reader(fo)]
    df = pd.DataFrame.from_records(records)
    return df

if __name__ == '__main__':
    df = avro_to_df('weather.avro')
    print(df)