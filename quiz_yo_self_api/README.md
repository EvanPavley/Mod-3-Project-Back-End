# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

rails g model Answer description solution:boolean
rails g controller Answer

rails g model Question description multiple_choice:boolean answer_ids:integer[] timed_value:integer
rails g controller Question

rails g model Quiz name image question_ids:integer[]
rails g controller Quiz

rails g migration AddCorrectToQuestions correct:boolean

rails g migration AddQuizRefToQuestions quiz:references

rails g migration AddQuestionRefToAnswers question:references

rails g migration RemoveAnswerIdsFromQuestions answer_ids:array
rails g migration RemoveQuestionIdsFromQuizzes question_ids:array
