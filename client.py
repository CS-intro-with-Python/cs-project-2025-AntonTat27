import requests

# Sending a post request to the server (API)
response = requests.get(url="http://127.0.0.1:8080/")
# Printing out the response of API
if response.status_code == 200:
    print("Success, output: ", response.text)
else:
    print("Error")