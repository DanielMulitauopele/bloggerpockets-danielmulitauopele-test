# BloggerPockets
<img src="https://img.shields.io/badge/ruby%20-v2.4.1-brightgreen.svg" title="ruby-badge">

## Table of Contents

* [Description/Purpose](#descriptionpurpose)
* [Prompt](#prompt)
* [Setup](#setup)
* [Testing](#testing)
* [Implementation](#implementation)
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
* Run bundle (For issues, see Setup section in [Implementation](#implementation))
* Run rails db:{create,migrate,seed}
* Run rails s
* Navigate to localhost:3000 in your browser

## Testing

To test this application locally, take the following steps:

* TBD

## Implementation

I chose to approach this take home exercise with a step-by-step methodology. In general, when I don't plan out my steps ahead of time, even small tasks like this one can seem overwhelming. What follows is a step-by-step walk through of my thought process when refactoring this repository. Each listed category is chronological in order: I began by thinking of setup challenges, and made my way through the MVC architecture of the application. In essence, I went outward from the database. I hope this approach makes sense, and please feel free to send me any questions that you might have!


### Problems

* Different versions of Ruby
* Different versions of Bundler
* No testing at all (lack of testing makes refactoring difficult)
* Unused routes (create, edit, new actions)
* Comments did not have proper routes
* Certain attributes in models are not validated
* Most DB logic should exist here, but it does not
* Code is not optimized, uses redundancies
* Scope logic

* A good amount of logic is done in the controllers, these should be pushed down to the model level
* Comments method in the posts controller disobeys restful architecture (goes back to routes)
* Sort logic in posts controller belong in model
* Unnecessary instance variables

* Comments index lists user name, but the link doesn’t work
* Comments view page uses both ordered list and unordered list on the same list. Needs adjustment of HTML.
* JSON delivers too much data to user, should use serializers to limit what the user gets to see (PASSWORD DIGEST SHOULD NOT BE VISIBLE)

### Solutions

- [X] Run rbenv install --list (verify that my ruby version was not listed)
- [X] Run brew update && brew upgrade ruby-build
- [X] Run rbenv install --list (Should now list ruby 2.5.3)
- [X] Run gem install bundler -v 1.17.3 (2.0 will not work)
- [X] Run bundle
- [X] Add feature tests for posts index
- [X] Add feature tests for posts show
- [X] Add feature tests for users index
- [X] Add feature tests for comments index
- [ ] Add model tests
- [X] Use resources :posts, only: [:index, :show] line to remove unused actions
- [ ] Add resources for comments, only: [:index]

- [ ] Use model tests to validate necessary attributes
- [ ] Move logic from controller to model (sort)
- [ ] Eliminate redundancies

- [ ] Move logic from controller to model (sort)
- [ ] Create comments controller
- [ ] Remove unnecessary and expensive instance variables (use @user.posts instead of creating @posts)

- [ ] Create relationship from comments to user, add link_to path
- [ ] Add serializers for JSON data

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
