# debian is a type of Linux. Ubuntu is based on it. jessie-slim is a particular variant chosen to reduce the size of the image.
FROM debian:jessie-slim

# This means that commands will run in the right directory on the host, because /code is mapped in the docker-compose.yml file.
WORKDIR /code

ADD ./hello.ml /code/
ADD ./run.sh /code/

RUN ["apt-get", "update", "-y"]
RUN ["apt", "install", "ocaml", "-y"]

CMD /code/run.sh
