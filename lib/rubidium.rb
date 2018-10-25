require "pry-byebug"                  # First thing
require "rubidium/version"
require "rubidium/routing"
require "rubidium/array"
require "rubidium/dependencies"
require "rubidium/controller"

module Rubidium
  class Application
    def call(env)
      begin
        klass, action = get_controller_and_action(env)
        controller = klass.new(env)
        response = controller.send(action)
      rescue Exception
        return [404, {"Content-Type" => "text/html"}, ["Bark bark! Not Found"]]
      end
      [200, {"Content-Type" => "text/html"}, [response]]
    end
  end
end
