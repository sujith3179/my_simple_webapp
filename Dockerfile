FROM ubuntu
RUN apt-get update -y
RUN apt-get install -y python3
RUN apt-get install -y curl
RUN apt-get install -y python3-distutils
RUN curl https://bootstrap.pypa.io/get-pip.py --output get-pip.py
RUN mv get-pip.py /opt/
RUN python3 /opt/get-pip.py
RUN pip install flask
COPY app.py /opt/app.py
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0