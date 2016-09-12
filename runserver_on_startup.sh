#!/usr/bin/env bash

. /home/ubuntu/venv_healthchecker/bin/activate
cd /home/ubuntu/healthchecker
gunicorn healthchecker:app -b 0.0.0.0:8000 -w 1 -D
