# Specify base image.
FROM python:3.9

# Set working directory.
WORKDIR fastapi-app

# Expose port 8000 for your FastAPI server.
EXPOSE 8000

# Copy your codebase into the Docker container.
COPY . /fastapi-app

# Install Python requirements using Pip.
RUN pip install -r requirements.txt

# Run FastAPI server on the port exposed above.
CMD ["python", "main.py"]
