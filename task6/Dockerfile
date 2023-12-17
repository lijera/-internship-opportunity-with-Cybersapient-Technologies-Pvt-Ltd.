# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Use an official Flask image
FROM tiangolo/uwsgi-nginx-flask:python3.9

# Set environment variables
ENV LISTEN_PORT 80


# Create and set the working directory
WORKDIR /app

# Copy only the requirements file to optimize caching
COPY requirements.txt /app/

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code to the container
COPY . /app/

# Run the application
CMD ["python", "app.py"]
