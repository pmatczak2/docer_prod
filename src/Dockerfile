FROM python:3.8-slim

WORKDIR /app

COPY . /app 

RUN pip install --no-cache-dir pytest

CMD [ "python", "test_main.py" ]


