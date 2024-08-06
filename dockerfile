FROM python:3.10-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /app

# Install dependencies
COPY requirements.txt /app/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Copy project files
COPY . /app/

# Collect static files (optional, if you have static files)
RUN python manage.py collectstatic --noinput

# Run server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
