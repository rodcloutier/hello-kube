From python:3.5-alpine

COPY requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

EXPOSE 5000

COPY hello.py /app/hello.py

CMD ["python", "hello.py"]
