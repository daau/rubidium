# Rubidium

This is a MVC micro webframework, built on top of Rack. This application was built 
specifically for the purposes of learning how Ruby on Rails works under the hood. In fact, you will notice that
many conventions were inspired by Rails.

## Controllers
The controller is located at `rubidium/controller.rb` 

*Your* controllers must be nested within an `/app/controllers/` directory, and must inherit the `Rubidium::Controller` class.
The controller class name must be camelcase, and appended with 'Controller'

For example, `DogsController` or `UsersController`

To render a view from the controller with some variables, call the following at the end of your controller action:
`render(:view, variable: "value")`

## Routing
Routing is based off of Rails 2.0 style routing, where controllers and their corresponding actions are explicitly named within the URL path. For example,

With the following request: `GET /dogs/show` the `DogsController` will call the `show` action.

## Views
Your views must be located within `/app/views/name_of_controller/name_of_action.html.erb`

## How to use
1. Download and install the gem. Since this hasn't been published on Rubygems, you will need to download it from GitHub and install it with a relative path in your Gemfile.
2. `bundle install`
3. Add `/config/application.rb` and create a class which inherits from `Rubidium::Application`.
4. Add `$LOAD_PATH << File.join(File.dirname(__FILE__), "..", "app", "controllers")` to ensure your controllers are loaded
5. Add `/config.ru`, require your application, and call `run YourApp.new`
6. `bundle exec rackup -p 3000`
7. You're now running Ruby on ~~Rails~~ Rubidium!

Wasn't that easy? ;)