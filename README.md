# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
    ruby 3.0.1

* Rails Version
    rails 6.1.0

* Database creation
    postgresql
    rails db:create db:migrate

* All API required User Authentication
    create a user it should create auth_token
    pass auth_token in header

    "TOKEN": "auth_token"

* API's
    Index list of Queue jobs
    "GET" -> 'http://localhost:3000/api/v1/queue_jobs'

    Create Queue jobs
    "POST" -> 'http://localhost:3000/api/v1/queue_jobs'

    test_data to_json ->
                {
                    "priority": 0,
                    "movie_option": {
                        "title": "xyz"
                    }
                }
