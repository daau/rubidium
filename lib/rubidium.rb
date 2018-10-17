require "rubidium/version"
require "rubidium/routing"
require "rubidium/array"

module Rubidium
  class Application
    def call(env)
      klass, action = get_controller_and_action(env)
      controller = klass.new(env)
      response = controller.send(action)
      [200, {"Content-Type" => "text/html"}, [response]]
    end
  end

  class Controller
    def initialize(env)
      @env = env
    end

    def env
      @env
    end
  end
end
