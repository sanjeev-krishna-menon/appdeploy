e the official Python image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the requirements.txt and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the Flask application code into the container
COPY . .

# Expose port 8080 for Cloud Run
EXPOSE 8080

# Set the entrypoint to run the Flask app
CMD ["python", "app.py"]

