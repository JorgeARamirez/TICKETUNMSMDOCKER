FROM python:3.11.3

WORKDIR /app

COPY requirements.txt .

RUN apt-get update && \
    apt-get install -y libpq-dev gcc

RUN pip3 --no-cache-dir install -r requirements.txt

COPY . /app

CMD ["python", "app.py"]