# Stage 1: Builder
FROM python:3.12.3-bookworm as builder
ENV PYTHONUNBUFFERED=1 PYTHONDONTWRITEBYTECODE=1
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt

# Stage 2: Final Image
FROM python:3.12.3-slim-bookworm
WORKDIR /app

COPY --from=builder /app /app

COPY . .
EXPOSE 8899
