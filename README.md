# rocm-wyoming-whisper

A docker image and a few lines of python to use OpenAI whisper with Rhasspy and/or Home Assistant on AMD GPUs with ROCm.

## Build Docker image

Build docker image:

```shell
docker build -t gpu-wyoming-whisper .
```

## Run with docker-compose

```shell
docker-compose up -d
```
