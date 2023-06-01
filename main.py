import web

urls = (
    '/(.*)', 'Hello'
)
app = web.application(urls, globals())


class Hello:
    @staticmethod
    def GET(name):
        if not name:
            name = 'world'
        return 'Hello, ' + name + '!'


if __name__ == "__main__":
    app.run()
