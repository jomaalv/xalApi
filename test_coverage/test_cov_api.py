import unittest
import requests

class ApiTest(unittest.TestCase):
	def test_read(self):
		global API_URL
		print("runing test for READ")
		r = requests.get(API_URL + "/API/READ/ALL")
		self.assertEqual(r.status_code, 200)
	def test_create(self):
		global API_URL
		print("runing test for CREATE")
		r = requests.post(API_URL + "/API/CREATE/test+test+test+test")
		self.assertEqual(r.status_code, 200)		
		
	def test_delete(self):
		global API_URL
		print("runing test for DELETE")
		r = requests.post(API_URL + "/API/DELETE/test")
		self.assertEqual(r.status_code, 200)
if __name__ == '__main__':
	API_URL = "http://172.31.0.4:5000/"
	unittest.main()
