FROM python:3.12
WORKDIR /app
COPY Pipfile .
COPY server.py .
# SETUP TOOL DEPENDENCIES
RUN apt update && \
 apt install ffmpeg && \
 apt install tesseract-ocr && \
 apt install libtesseract-dev && \
 apt install libjpeg-dev zlib1g-dev &&
# SETUP VIRTUALENV PACKAGE
RUN apt-get install -y python3-pip && \
 pip install --upgrade pip && \
 pip install virtualenv
# SETUP APPLICATION
RUN python3 -m venv .venv && \
 . ./.venv/bin/activate && \
 pip install pipenv && \
 pipenv install
ENTRYPOINT ["pipenv", "run", "prod"]
