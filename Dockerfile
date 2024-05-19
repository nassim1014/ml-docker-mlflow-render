# Dockerfile
FROM python:3.9-slim

WORKDIR /app

# Install dependencies
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Set the GIT_PYTHON_REFRESH environment variable
ENV GIT_PYTHON_REFRESH=quiet

# Copy the source code
COPY src src

# Expose the MLflow port
EXPOSE 5000

# Command to run the training script
CMD ["python", "src/train.py"]
