# Step 1: Use official Python image
FROM python:3.13-slim

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy project files into the container
COPY . /app

# Step 4: Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Expose port 5000 (Flask’s default)
EXPOSE 5000

# Step 6: Define the command to run the Flask app
CMD ["python", "flask_api.py"]