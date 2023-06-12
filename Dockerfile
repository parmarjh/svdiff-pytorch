FROM python:3.8

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire ML repository to the container
COPY . .

# Expose the required port for the Streamlit app
EXPOSE 8501

# Start the Streamlit application
CMD ["streamlit", "run", "main.py", "--server.port", "8501", "--server.enableCORS", "false"]
