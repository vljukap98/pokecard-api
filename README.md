# pokecard-api

## Prerequisites

- python3, pip, pillow, sanic
- libjpeg-dev zlib1g-dev
- ffmpeg
- tesseract
- pokemon-card-recognizer (https://github.com/prateekt/pokemon-card-recognizer)

```shell
$ apt update
$ apt install ffmpeg
$ apt install tesseract-ocr
$ apt install libtesseract-dev 
$ apt install libjpeg-dev zlib1g-dev
$ pip install pokemon-card-recognizer
```

## Docker

```shell
$ docker compose up --build -d
```

Logs

```shell
$ docker compose logs -f
```
