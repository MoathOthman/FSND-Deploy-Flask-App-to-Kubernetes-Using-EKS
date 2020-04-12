

FROM python:stretch

COPY main.py /
COPY requirements.txt /
COPY ci-cd-codepipeline.cfn.yml / 
COPY buildspec.yml /
COPY simple_jwt_api.yml /
COPY test_main.py /
COPY README.md /
COPY .gitignore / 

WORKDIR /

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
