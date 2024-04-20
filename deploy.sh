#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

# Setup - ensure the script is run with Python 3
echo "Checking Python version..."
PYTHON_VERSION=$(python3 --version | cut -d ' ' -f 2)
PYTHON_MAJOR_VERSION=$(echo $PYTHON_VERSION | cut -d '.' -f 1)

if [ "$PYTHON_MAJOR_VERSION" -ne 3 ]; then
  echo "This script requires Python 3."
  exit 1
else
  echo "Using Python $PYTHON_VERSION"
fi

# Create and activate a virtual environment
echo "Setting up virtual environment..."
python3 -m venv env
source env/bin/activate

# Install dependencies
echo "Installing dependencies from requirements.txt..."
pip install -r requirements.txt

# Load environment variables if .env file exists
if [ -f ".env" ]; then
  echo "Loading environment variables from .env file..."
  set -a  # automatically export all variables
  source .env
  set +a
fi

# Run database migrations
echo "Applying database migrations..."
python manage.py migrate

# Collect static files
echo "Collecting static files..."
python manage.py collectstatic --noinput  # Don't prompt for input

# Start the application using Gunicorn
echo "Starting Django application with Gunicorn..."
gunicorn your_project_name.wsgi:application --bind 0.0.0.0:8000

echo "Deployment complete. Application is now accessible."
