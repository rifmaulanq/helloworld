# Gunakan image Python
FROM python:3.9-slim

# Atur working directory
WORKDIR /app

# Copy requirements dan install dependencies
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copy kode aplikasi
COPY . .

# Ekspos port 8080
EXPOSE 8080

# Perintah untuk menjalankan aplikasi
CMD ["gunicorn", "-b", "0.0.0.0:8080", "app:app"]
