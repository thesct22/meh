FROM python:slim-buster

LABEL version="0.0.3"
LABEL maintainer="sharathct22@gmail.com"

COPY main.py main.py

CMD [ "python", "main.py" ]