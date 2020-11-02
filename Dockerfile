FROM python:3.9-alpine

WORKDIR /site/

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
RUN apk update && apk add nmap

COPY . .

CMD [ "python", "./test.py" ]
