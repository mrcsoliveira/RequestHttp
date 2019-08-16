import requests

requisicao = requests.get('https://google.com.br')

print (requisicao.text)
