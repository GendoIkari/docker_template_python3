FROM python:3

WORKDIR /tmp/app

ADD . .

RUN pip install -r requirements.txt

CMD python app.py
