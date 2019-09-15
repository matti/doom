FROM ubuntu:18.04

RUN apt-get update && apt-get install -yq --no-install-recommends \
  chocolate-doom

WORKDIR /app
COPY app .

ENV DISPLAY=x:0
ENTRYPOINT ["/app/entrypoint.sh"]
