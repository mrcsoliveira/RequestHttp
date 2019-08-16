FROM debian

MAINTAINER Antonio Marcos amrcsoliveira@gmail.com

LABEL description="container para request"

COPY request.py  /root

RUN apt-get update -y && apt-get install -y python3 python3-pip

RUN pip3 install requests

CMD  python3 /root/request.py
