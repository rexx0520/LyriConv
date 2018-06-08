FROM python:3-alpine

ENV PORT 8080

ADD *.py /LyriConv/
ADD requirements.txt /LyriConv/

WORKDIR /LyriConv

RUN pip install -r ./requirements.txt

CMD ["python", "./app.py"]

EXPOSE 8080
