FROM python:3.12-alpine3.20

RUN pip install nctalk

WORKDIR /script

COPY send-message.sh /script
CMD [ "/script/send-message.sh" ]
