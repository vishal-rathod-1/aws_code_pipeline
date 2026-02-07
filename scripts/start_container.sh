#!/bin/bash

set -e

docker pull docker pull rathod2038/sample-python-flask-app:latest

docker run -d -p 5000:5000 --name sample-python-flask-app rathod2038/sample-python-flask-app:latest