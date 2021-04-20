def app(environ, start_response):
    data = b''
    for p in environ['QUERY_STRING'].split('&'):
        data += (p+'\n').encode('utf-8')
    headers = [
        ('Content-type', 'text/plain'),
        ('Content-Length', str(len(data)))
    ]
    start_response('200 OK', headers)
    return iter([data])