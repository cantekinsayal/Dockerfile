# Python imajını kullan
FROM python:3.10-slim

# Çalışma dizinini oluştur
WORKDIR /app

# Gereksinim dosyasını ve kodları yükle
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Tüm dosyaları kopyala
COPY . .

# Botu başlat
CMD ["python", "main.py"]
