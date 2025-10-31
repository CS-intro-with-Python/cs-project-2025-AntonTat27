FROM python:3.11-slim
# Our base image, Debian (Linux) with installed Python
WORKDIR /app
# Set /app as workdir
COPY . /app
# Copy files from . (local) to /app (in image)
RUN pip install -r requirements.txt
# you want to execute in image
# you can use several RUN
# example: RUN pip install -r requirements.txt
ENTRYPOINT ["python", "server.py"]
# Specifies the default command to be executed
# when the container starts. Cannot be replaced
# example: ENTRYPOINT ["python", "server.py"]