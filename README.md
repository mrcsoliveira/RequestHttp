# RequestHttp
  Aplicação rodando em docker, onde um contêiner faz uma requisição HTTP para um website aberto na WEB e imprimir (print) a informação (response) no ‘syslog’ do próprio Docker, nesse exemplo utilizamos o website referencia "google.com.br"

  Utilizando como scripty um programa em pyhton "request.py", onde importamos a biblioteca requests. Requests irá automaticamente decodificar o conteúdo do servidor. A maioria dos conjuntos de caracteres unicode são decodificados nativamente. Quando você faz uma requisição, Requests advinha qual a codificação da reposta baseada nos cabeçalhos HTTP. A codificação de texto advinhada por Requests é usada quando você acessa requisicao.text

import requests

requisicao = requests.get('https://google.com.br')

print (requisicao.text)


  Na imagem criada utilizamos o COPY para copiar o arquivo "request.py" para dentro do container, o comando "RUN apt-get update -y && apt-get install -y python3 python3-pip" para fazer a instalação do python3 e "RUN pip3 install requests" para o donwload da biblioteca, e por fim o "CMD  python3 /root/request.py" é a linha de comando que sera executada nesse container
