FROM python:3.8-slim

RUN apt-get update && apt-get -y upgrade && apt-get install -y --no-install-recommends zip && apt-get install -y --no-install-recommends git && apt-get install -y --no-install-recommends make


RUN pip3 install awsebcli==3.20.3 --upgrade --user

CMD ["/bin/bash"]
