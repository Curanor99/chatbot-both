FROM python:3.9.0-slim

EXPOSE 5000

RUN mkdir /tmp/chatbot
COPY ./ /tmp/chatbot/

RUN apt-get update \
    && apt-get -y install libpq-dev gcc

RUN pip3 install -r /tmp/chatbot/requirements.txt

RUN chmod +x /tmp/chatbot/run-chatbot.sh

CMD /tmp/chatbot/run-chatbot.sh