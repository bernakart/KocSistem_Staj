FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
# 6. Streamlit'in kullandığı portları aç
EXPOSE 8501
# 7. Streamlit uygulamasını başlat
CMD ["streamlit", "run", "main.py", "--server.port=8501", "--server.address=0.0.0.0"]
