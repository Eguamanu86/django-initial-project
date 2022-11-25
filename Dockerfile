FROM python:3.10.8
EXPOSE 8000
ENV PYTHONUNBUFFERED 1

RUN mkdir /app
WORKDIR /app

COPY docker/requirements.txt /app/
RUN pip3 install -r requirements.txt

COPY . /app/

ARG version=dev
ENV VERSION=${version}
ARG branch=dev
ENV BRANCH=${branch}
# RUN ["chmod", "+x", "/app/docker/entrypoint.sh"]
# ENTRYPOINT ["/app/docker/entrypoint.sh"]
