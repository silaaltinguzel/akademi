# Base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy requirements file
COPY req.txt req.txt

# Install dependencies
RUN pip install -r req.txt

# Copy application code
COPY . .

# Expose port
EXPOSE 5000

# Run the application
CMD ["python", "api.py"]

