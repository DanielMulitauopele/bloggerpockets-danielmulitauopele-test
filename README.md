# BloggerPockets
<img src="https://img.shields.io/badge/ruby%20-v2.4.1-brightgreen.svg" title="ruby-badge">

## Table of Contents

* [Description/Purpose](#descriptionpurpose)
* [Prompt](#prompt)
* [Setup](#setup)
* [Testing](#testing)
* [Implementation](#implementation)
* [Problems](#problems)
* [Solutions](#solutions)
* [Dependencies](#dependencies)
* [Contributors](#contributors)

## Description/Purpose

This application was built to demonstrate my proficiency and ability to use Ruby on Rails, as well
as my understanding of MVC best practices and RESTful API creation. As a candidate for the junior
software development position at BiggerPockets, I hope this application demonstrates my aptitude for critical thinking, a disposition toward refactoring, and an orientation toward agile processes. The prompt for this project is listed below.

## Prompt

This repository contains a very basic Rails 5 app.
The code contains many problems: please **identify** these problems and propose **fixes**.

It is not essential to run the app in order to find the issues, but it may help you to do so and that's totally fine. The standard Rails startup procedure should be enough:

````
$ bundle
$ bin/rails db:create db:migrate db:seed
$ bin/rails s
````

## Setup

To setup this application locally, take the following steps:

* Clone this repository down into a local directory of your choice.
* Navigate(cd) into bloggerpockets-danielmulitauopele-test
* Run bundle (For issues, see actions in [Setup Solutions](#setup-solutions))
* Run rails db:{create,migrate,seed}
* Run rails s
* Navigate to localhost:3000 in your browser

## Testing

To test this application locally, take the following steps:

* After running bundle and installing dependencies, run `rspec` to run all tests

## Implementation

I chose to approach this take home exercise with a step-by-step methodology. What follows is a walkthrough of my thought process when refactoring this repository. Because I was unable to ask many clarifying questions before the weekend, I chose to make a few assumptions:

* The database schema functions as was intended
* The main features, in general, worked as intended. A few refactors are needed, but the main functionality should be preserved.

With these assumptions in mind, I began work on refactoring code so that the main functionality was not changed significantly. I chose to focus on improving the readability of the code and ensuring that the code followed Rails best practices. This was my process:

1. Create agile board to plan out necessary steps
2. Briefly skim code to mark down potential problem areas
3. Clone code down and run setup
4. Support existing code with tests so that code does not break. (*If this were a production repo with many users, I would absolutely do this first. Tests help provide stability, and while they may seem overkill for this small repo, I felt them necessary to honor the existing codebase.*)
5. Review/Refactor routes
6. Review/Refactor models
7. Review/Refactor controllers
8. Review/Refactor views

## Problems

* Different versions of Ruby (2.4.1 on local machine vs 2.5.3)
* Different versions of Bundler 

*See [Setup Solutions](#setup-solutions)*

* No feature tests
* No model tests

*See [Testing Solutions](#testing-solutions)*

* Unused routes (create, edit, new actions)
* Comments did not have proper routes

*See [Routes Solutions](#routes-solutions)*

* Certain attributes in models are not validated
* Certain relationships are not referenced
* Most business logic should exist here, but it does not. Logic rests in controllers.
* Code is not optimized, uses redundancies (validates_presence_of is used twice when only needed once)

*See [Model Solutions](#model-solutions)*

* Logic is done in the controllers, these should be pushed down to the model level
* Comments method in the posts controller disobeys restful architecture (goes back to routes)
* Sort logic in posts controller belong in model
* Published scope is not used in posts controller
* Unnecessary instance variables
* SQL injection vulnerabilitues with the sort
* SQL makes too many calls to the database

*See [Controller Solutions](#controller-solutions)*

* Comments index lists user name, but the link doesn’t work
* Incorrect HTML syntax (ordered list paired with unordered list, no indentation, incorrect use of hr tag)
* JSON delivers too much data to user, should use serializers to limit what the user gets to see (password_digest, especially, should not be visible)

*See [Views Solutions](#views-solutions)*

## Solutions

##### Setup Solutions
- [X] Run rbenv install --list (verify that my ruby version was not listed)
- [X] Run brew update && brew upgrade ruby-build
- [X] Run rbenv install --list (Should now list ruby 2.5.3)
- [X] Run gem install bundler -v 1.17.3 (2.0 will not work)
- [X] Run bundle

##### Testing Solutions
- [X] Add RSpec for testing
- [X] Add feature tests for posts index
- [X] Add feature tests for posts show
- [X] Add feature tests for users index
- [X] Add feature tests for comments index
- [X] Add model tests for post
- [X] Add model tests for user
- [X] Add model tests for comment

##### Routes Solutions
- [X] Use resources :posts, only: [:index, :show] line to remove unused actions
- [X] Use resources :users, only: [:show] line to remove unused actions
- [X] Add resources for comments, only: [:index]

##### Model Solutions
- [X] Use model tests to validate necessary attributes
- [X] Use model tests to validate necessary relationships
- [X] Add validations/relationships to models
- [X] Move logic from posts controller to post model (sort)
- [X] Eliminate redundancies

##### Controller Solutions
- [X] Move logic from controller to model (sort)
- [X] Uses published scope instead of making direct DB call through controller
- [X] Create comments controller with index action
- [X] Remove unnecessary and expensive instance variables (use @user.posts in views instead of creating @posts)
- [X] Refactor controller code for easier reading (respond_to :html, instead respond_to block with |format|)
- [X] Addresses SQL injection vulnerablity
- [X] Uses includes to reduce the number of database queries


##### Views Solutions
- [X] Create relationship link from comments to user, add link_to path
- [X] Add user serializer for JSON data
- [X] Add post serializer for JSON data
- [X] Fix hr tag
- [X] Fix ol/ul list error
- [X] Add proper indentations

## Dependencies

**General**

* [Active Model Serializers](https://github.com/rails-api/active_model_serializers)
* [BCrypt](https://github.com/codahale/bcrypt-ruby)

**Development**

* [Faker](https://github.com/stympy/faker)

**Test**

* [Database Cleaner](https://github.com/DatabaseCleaner/database_cleaner)
* [Launchy](https://github.com/copiousfreetime/launchy)
* [Pry](https://github.com/pry/pry)
* [RSpec](https://github.com/rspec/rspec)
* [Shoulda-Matchers](https://github.com/thoughtbot/shoulda-matchers)
* [SimpleCov](https://github.com/colszowka/simplecov)

## Contributors

* [Daniel Mulitauopele](https://github.com/DanielMulitauopele)
