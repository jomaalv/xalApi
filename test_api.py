import unittest
import requests

class ApiTest(unittest.TestCase):
	API_URL = "http://172.27.0.2:5000/"
	def test_read(self):
		print("runing test for READ")
		r = requests.get("http://172.27.0.2:5000/API/READ/ALL")
		self.assertEqual(r.status_code, 200)
	def test_create(self):
		print("runing test for CREATE")
		r = requests.post("http://172.27.0.2:5000/API/CREATE/test+test+test+test")
		self.assertEqual(r.status_code, 200)		
		
	def test_delete(self):
		print("runing test for DELETE")
		r = requests.post("http://172.27.0.2:5000/API/DELETE/test")
		self.assertEqual(r.status_code, 200)
if __name__ == '__main__':
	unittest.main()
