FROM ubuntu:16.04

# docker build -t vanessa/flask-cogat-neurovault .

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev python-pandas python-numpy python-networkx

RUN pip install matplotlib==2.0.2
RUN pip install scikit-image==0.14
RUN pip install flask pybraincompare

RUN mkdir -p /code
WORKDIR /code
ADD . /code

ENTRYPOINT ["python"]
CMD ["/code/index.py"]
