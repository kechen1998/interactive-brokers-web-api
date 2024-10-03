#!/bin/bash

# Run the gateway in the background
cd gateway && sh bin/run.sh root/conf.yaml &

# Activate the virtual environment
. /app/webapp/venv/bin/activate

# Stay in the /app/webapp directory and run the Flask app
cd /app/webapp

# Run Flask application
flask --app app run --debug -p 5056 -h 0.0.0.0
