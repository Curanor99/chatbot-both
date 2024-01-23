#!/bin/bash

cd /tmp/chatbot/chatbot-backend

rasa run actions &
rasa run &
python /tmp/chatbot/chatbot-ui/app.py