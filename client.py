import requests

# Sending a post request to the server (API)
response = requests.get(url="http://127.0.0.1:8080/")
# Printing out the response of API
print(response.text)