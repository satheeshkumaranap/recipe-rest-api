FROM python:3.9.16-bullseye

ENV PYTHONUNBUFFERED=1
WORKDIR /app 

COPY requirements.txt .
COPY requirements.dev.txt .
COPY ./app .

# Set work directory
WORKDIR /app 

EXPOSE 8000

RUN /usr/local/bin/python -m pip install --upgrade pip

RUN pip3 install -r requirements.txt
RUN pip3 install -r requirements.dev.txt

