FROM python:3.11-slim-buster as build

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY src/ .

EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8001"]
