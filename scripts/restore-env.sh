#!/bin/bash

echo "***Removing the .env/venv environment"
rm -rf .env

# create the virtual environment
./scripts/create-env.sh

# activate virtual environment
./scripts/activate-env.sh

echo "***Reinstalling packages to the .env/venv environment from requirements.txt"
pip install -r requirements.txt
