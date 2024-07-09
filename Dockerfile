# Use the official Python image as the base image
FROM python:3.9-slim

# Set the working directory to /app
WORKDIR /app

# Copy the Python script into the container
COPY hello.py .
COPY requirements.txt .
# Install any required Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Set the command to run the Python script
CMD ["python", "hello.py"]
