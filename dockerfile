FROM python:rc-alpine3.12

WORKDIR /python/example/

ADD . .

RUN pip install -r requirements.txt

RUN cookiecutter . --no-input -o output

WORKDIR /python/example/output/my-repository

RUN python hello.py

WORKDIR /python/example/output/my-repository/tasks

RUN invoke -l

RUN invoke list-directory
