FROM python:3.11-slim
# Our base image, Debian (Linux) with installed Python
WORKDIR /app
# Set /app as workdir
COPY . /app
# Copy files from . (local) to /app (in image)
RUN pip install -r requirements.txt

ENV PYTHONPATH ${PYTHONPATH}:'/app:/app/app'
ENV FLASK_RUN_RELOAD=true

ENTRYPOINT ["flask", "--app", "server:app", "run", "-h", "0.0.0.0", "-p", "8080"]