FROM python:3.11-slim
WORKDIR /app

# Install dependencies (requirements.txt may be empty initially)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt || true

# Copy project
COPY . .

CMD ["python", "src/main.py"]
