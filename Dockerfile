# Use Python 3.8 slim image as base
FROM python:3.8-slim

# Set working directory inside container
WORKDIR /app

# Copy requirements file
COPY requirements.txt .

# Install Python dependencies
RUN pip install -r requirements.txt

# Copy application files
COPY . .

# Expose port 5000
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
