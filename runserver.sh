#!/usr/bin/env bash

. ~/venv_healthchecker/bin/activate

(kill $(ps ax | grep "[g]unicorn healthchecker" | awk '{print $1}')  &&  echo "Restarting webserver...") || echo "Starting webserver..."

gunicorn healthchecker:app -b 0.0.0.0:8000 -w 1 -D

ps ax | grep "[g]unicorn healthchecker"
