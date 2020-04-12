FROM python:stretch

COPY . /main
WORKDIR /main

RUN pip install --upgrade pip
RUN pip3 install flask
RUN pip3 install jwt
RUN pip3 install pyjwt
RUN pip3 install pytest
RUN pip3 install gunicorn

ENTRYPOINT [ "gunicorn", "-b", ":8080", "main:APP" ]