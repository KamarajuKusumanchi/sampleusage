# Write a simple avro file

from fastavro import writer, parse_schema

def get_schema():
    schema = {
        'type': 'record',
        'name': 'SampleData',
        'namespace': 'com.company.group.objects.avro.weather',
        'fields': [
            {'name': 'station', 'type': 'string'},
            {'name': 'sample', 'type': 'string'},
            {'name': 'temp', 'type': 'float'},
        ],
    }
    parsed_schema = parse_schema(schema)
    return parsed_schema

def write_avro():
    schema = get_schema()
    records = [
        {'station': 'New York City', 'sample': '3628', 'temp': 42.3},
        {'station': 'San Jose', 'sample': '0389', 'temp': 67.4},
        {'station': 'Hyderabad', 'sample': '3379', 'temp': 104.7},
        {'station': 'New Delhi', 'sample': '5478', 'temp': 98.75},
    ]
    file_path = 'weather.avro'
    with open(file_path, 'wb') as out:
        writer(out, schema, records)
    print('wrote', file_path)

if __name__ == '__main__':
    write_avro()