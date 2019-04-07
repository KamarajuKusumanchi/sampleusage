# In weather.avro, the SampleData field is stored as string. Change it to int.

from fastavro import reader, writer, parse_schema

def get_new_schema():
    schema = {
        'type': 'record',
        'name': 'SampleData',
        'namespace': 'com.company.group.objects.avro.weather',
        'fields': [
            {'name': 'station', 'type': 'string'},
            {'name': 'sample', 'type': 'int'},
            {'name': 'temp', 'type': 'float'},
        ],
    }
    parsed_schema = parse_schema(schema)
    return parsed_schema

def convert_schema():
    schema = get_new_schema()

    old_file = 'weather.avro'
    print('reading', old_file)
    with open(old_file, 'rb') as fin:
        records = [r for r in reader(fin)]

    for r in records:
        r['sample'] = int(r['sample'])

    new_file = 'weather_cmpct.avro'
    with open(new_file, 'wb') as fout:
        writer(fout, schema, records)
    print('wrote', new_file, 'with new schema')

if __name__ == '__main__':
    convert_schema()