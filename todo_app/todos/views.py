from django.shortcuts import render
from django.http import HttpResponse


def list_todo_items(request):
    return render(request, 'todos/todo_list.html')
