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

### Initial Planning Process

#### Setup

The first order of business was to clone down the repo from BiggerPockets, and bundle accordingly. I'm not entirely sure if this process was intentional, but I had been working in Ruby 2.4, while the repo was built in Rails 5. I tried to upgrade my Ruby version to 2.5.3, but it was not included in my rbenv ruby-build. Additionally, my version of bundle did not support Ruby 2.5.3, and bundle 2.0 wouldn't work either, so I needed to upgrade bundler to a specific version: 1.17.3. Again, probably not intentional, but I wanted to address the fact that the setup takes some time (and it was not listed in the documentation of the original repo). Here were my steps:

* Run rbenv install --list (verify that my ruby version was not listed)
* Run brew update && brew upgrade ruby-build
* Run rbenv install --list (Should now list ruby 2.5.3)
* Run gem install bundler -v 1.17.3 (2.0 will not work)
* Run bundle

#### Adding Testing
#### Seeding
#### DB Migrations
#### Models
#### Controllers
#### Views

## Dependencies

**Development**

* TBD

## Contributors

* [Daniel Mulitauopele](https://github.com/DanielMulitauopele)
