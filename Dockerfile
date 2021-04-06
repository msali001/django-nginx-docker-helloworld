FROM python:3.9.2

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

RUN mkdir /app
COPY ./helloworld /app
WORKDIR /app

COPY ./entrypoint.sh /

ENTRYPOINT ["sh", "/entrypoint.sh"]
