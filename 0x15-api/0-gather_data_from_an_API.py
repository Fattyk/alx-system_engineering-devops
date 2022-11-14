#!/usr/bin/python3
"""Gather data from an API"""
import requests
import sys


def progress(id):
    """print todo information about user"""
    url = "https://jsonplaceholder.typicode.com"
    user = requests.get(url + "users/{}".format(id)).json()
    todos = requests.get(url + "todos", params={"userId": id}).json()
    completed = [todo.get(
        "title") for todo in todos if todo.get(
        "completed") == "true"]
    print("Employee {} is done with tasks({}/{}):".format(
        user.get("name"), len(completed), len(todos)))
    for item in completed:
        print("\t {}".format(item))


def main():
    """Entry point"""
    id = sys.argv[1]
    progress(id)


if __name__ == "__main__":
    main()
