# Rubidium

This is a MVC micro webframework, built on top of Rack. This application was built 
specifically for the purposes of learning how Ruby on Rails works under the hood.

## Controllers
The controller is located at `rubidium/controller.rb` 

Your controllers must be nested within an `/app/controllers/` directory, and must inherit the `Rubidium::Controller` class.
The controller class name must be in camelcase, and appended with 'Controller'

For example, `DogsController` or `UsersController`

## Routing
Routing is based off of Rails 2.0 style routing, where controllers and actions are explicitly named within the URL path. This is better shown, than described.

When your Rubidium receives an incoming request for `GET /dogs/show` the DogsController will be called, with the Show action.

## Views
Your views must be located within `/app/views/name_of_controller/name_of_action.html.erb`

## How to use
1. Download and install the gem. Since this hasn't been published on Rubygems, you will need to install it
with a relative pathfile.

2. `bundle install`

3. Add `config/application.rb` and create a class inheriting from Rubidium::Application

4. `bundle exec rackup -p 3000`