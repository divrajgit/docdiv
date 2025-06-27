# 🐍 Use official Python image as base
FROM python:3.11-slim

# 🗂 Set working directory
WORKDIR /app

# 📦 Install dependencies
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# 🚀 Copy app code
COPY . .

# 📣 Set environment variables
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# 🔥 Expose the port Flask runs on
EXPOSE 5000

# 🏁 Run the application
CMD ["flask", "run"]
