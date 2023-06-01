import unittest
import requests

class MyTestCase(unittest.TestCase):
    def test_getHello(self):
        r = requests.get('http://127.0.0.1:8080/Sveta')
        self.assertEqual(r.text, "Hello, Sveta!")


if __name__ == '__main__':
    unittest.main()
