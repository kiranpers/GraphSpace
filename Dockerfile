FROM python:2.7-slim

# Install dependencies
# Set the working directory in the container
WORKDIR /app

# Install system dependencies required for psycopg2
RUN apt-get update && apt-get install -y \
    gcc \
    libpq-dev \
    python-dev \
    curl \
    git \
    # Clean up to keep the image slim
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Copy application files
COPY . /app/

EXPOSE 8000

# Install Node.js
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - \
    && apt-get install -y nodejs

# Install Bower globally
RUN npm install -g bower --unsafe-perm=true
RUN pip install --upgrade pip
RUN pip install -r requirements.txt -c constraints.txt
RUN bower install
