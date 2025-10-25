ARG PYTHON_VERSION=3.10

FROM python:${PYTHON_VERSION} AS base

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

FROM python:${PYTHON_VERSION}-slim

WORKDIR /app

COPY --from=base /usr/local/lib/python3.10/site-packages /usr/local/lib/python3.10/site-packages

COPY --from=base /usr/local/bin /usr/local/bin

COPY app.py .

EXPOSE 8000

CMD ["gunicorn", "app:app", "--bind", "0.0.0.0:8000"]