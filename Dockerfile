# Use the official Python base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt file to the container
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire application directory to the container
COPY . .

# Set the environment variable for Python to run in unbuffered mode
ENV PYTHONUNBUFFERED=1

# Expose the port that your application will run on
EXPOSE 8000

# Command to run your Python application
CMD ["python", "Face-detection.py"]
