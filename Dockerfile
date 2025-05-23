FROM python:3.11-slim

WORKDIR /api-python/app

COPY app/* .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

CMD ["python", "app.py"]