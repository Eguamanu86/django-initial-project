# django-initial-project
Plantilla Inicial Docker, python 3.10 y Django 4.

Ejecutar los siguientes pasos:

    docker-compose build --no-cache
    docker-compose run --rm django django-admin startproject core django-backend

Habilite las siguientes lineas en archivo Dockerfile:

    RUN ["chmod", "+x", "/app/docker/entrypoint.sh"]
    ENTRYPOINT ["/app/docker/entrypoint.sh"]

Vuelva a crear la Imagen Docker

    docker-compose build
    docker-compose up

Abre el navegador e ingresa:

    http://localhost:8001/
