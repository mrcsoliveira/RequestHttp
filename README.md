# RequestHttp
aplicação rodando em docker, onde um contêiner faz uma requisição HTTP para um website aberto na WEB e imprimir (print) a informação (response) no ‘syslog’ do próprio Docker

Utilizando como scripty um programa em pyhton (request.py), onde importamos a biblioteca requests. Requests retira todo o trabalho do protocolo HTTP/1.1 do Python - deixando a integração dos seus serviços web sem problemas. Não há necessidade para adicionar query string nas suas URLs manualmente, ou de codificar seus dados de formulário POST. Keep-alive e gerência de conexões HTTP são 100% automáticas, feitas com urllib3, que está incluso no Requests. (https://2.python-requests.org/pt_BR/latest/ ) 

