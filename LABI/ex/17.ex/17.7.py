import requests
import time

f1 = time.time()

f = requests.get("http://127.0.0.1:8080/form")

e1 = time.time()
print(f.status_code)
print(e1-f1)


h = requests.get(" http://www.ua.pt.")
e2 = time.time()

print(h.status_code)
print(("Information gotten in %d seconds")%((e2-f1)))
print(e2-f1)

url = "http://www.ua.pt"
values = {"nome": "Ana", "idade": 20}
r = requests.post(url, data=values)
print(r.status_code)
