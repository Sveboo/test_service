import unittest
import requests
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


class MyTestCase(unittest.TestCase):
    async def test_getHello(self):
        await app.run()
        r = requests.get('http://127.0.0.1:8080/Sveta')
        self.assertEqual(r.text, "Hello, Sveta!")


if __name__ == '__main__':
    unittest.main()
