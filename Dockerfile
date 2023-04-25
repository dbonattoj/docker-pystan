# Base image
FROM python:3.10

# Set environment variable for PyStan version
ENV PYSTAN_VERSION=3.7

# Install required packages
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    g++ \
    gcc \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Install PyStan and dependencies
RUN pip install matplotlib==3.7.1 numpy==1.24.3 scipy==1.10.1 \
                sympy==1.11.1 pandas==2.0.1 arviz==0.15.1 \
                jupyter==1.0.0 notebook==6.5.4 ipykernel==6.22.0
RUN pip install pystan==$PYSTAN_VERSION

# Set working directory
WORKDIR /app

# Copy the contents of the host directory to the container
COPY . /app
