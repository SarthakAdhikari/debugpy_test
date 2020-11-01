FROM python:3.9-alpine

WORKDIR /site/

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
RUN apt update
RUN DEBIAN_FRONTEND='noninteractive' apt install -y nmap

COPY . .

CMD [ "python", "./test.py" ]
