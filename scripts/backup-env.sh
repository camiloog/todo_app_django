#!/bin/bash
echo "***Backing up the .env/venv environment on requirements.txt"
pip freeze > requirements.txt
