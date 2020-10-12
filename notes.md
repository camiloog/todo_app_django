# Notes

## Development environment

- Download and check version:

  ```
  python --version
  ```

- Install virtualenv to create virtual environments:

  ```
  pip install virtualenv
  ```

- Create a virtual environment:

  ```
  python -m venv .venv
  ```

- To activate the environment go to the `.venv/Scripts` folder and execute the `activate` script:

  ```
  # from cmd or powershell:
  ./activate

  # from bash or linux:
  source ./activate
  ```

- To list the dependencies or packages on the environment:

  ```
  pip freeze
  ```

- To backup the dependencies on the repository store them on a file:

  ```
  pip freeze > requirements.txt
  ```

- To reinstall the dependencies on a different environment:

  ```
  pip install -r requirements.txt
  ```

## Project Setup

- Install django:

  ```
  pip install django
  ```

- Create project:

  ```
  django-admin startproject todo_app
  ```

- To start the project:

  ```
  cd todo_app
  python manage.py runserver
  ```

## Create application

- Create a new app _todos_ within the todo_app project:

  ```
  cd todo_app
  python manage.py startapp todos
  ```

## Create model and update database

- Create a model on the _todos_ app by adding the model to the `todos/models.py`:

  ```
  class Todo(models.Model):
      content = models.TextField()
  ```

- Create the migration with the new model by running:

  ```
  python manage.py makemigrations todos
  ```

  This will create the first migration on `todos/migrations/`

- To review the sql command needed for a migration you can run:

  ```
  python manage.py sqlmigrate todos MIGRATION_ID
  ```

  This will return the sql code.

- To update the database just run:

  ```
  python manage.py migrate
  ```
