FROM circleci/python:latest

WORKDIR /

RUN true \
    && sudo git clone https://github.com/arthaud/git-dumper.git \
    && cd git-dumper \
    && sudo pip install -r requirements.txt

ENTRYPOINT ["python", "/git-dumper/git-dumper.py"]
