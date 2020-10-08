#!/bin/bash

# restore the virtual environment and dependencies
./scripts/restore-env.sh

# start the project
echo "-------------------------------------------"
echo "***Starting the App"
python todo_app/manage.py runserver