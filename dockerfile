# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed dependencies
RUN pip install --no-cache-dir cryptography pycryptodome websockets requests

# Make port 8080 available for websockets (or any port your WebSocket server uses)
EXPOSE 8080

# Run the script when the container starts
CMD ["python", "swg_script.py"]
