#!/bin/bash

cd /tmp/chatbot/chatbot-fapra

rasa run actions &
rasa run &
python /tmp/chatbot/chatbot-ui/app.py