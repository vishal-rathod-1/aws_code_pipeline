#!/usr/bin/env bash
set -e

docker pull rathod2038/sample-python-flask-app:latest

docker run -d -p 5000:5000 rathod2038/sample-python-flask-app:latest
