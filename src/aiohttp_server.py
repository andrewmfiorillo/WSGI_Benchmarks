from aiohttp import web


async def handle(request):
    return web.Response(body='OK', status=200, content_type='text/plain')

app = web.Application()
app.add_routes([
    web.get('/', handle),
])

web.run_app(app, host='0.0.0.0', port=9808)
