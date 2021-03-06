require "erubis"
require "rubidium/utilities"
require "rubidium/file_model"

module Rubidium
  class Controller
    include Rubidium::Model
    
    def initialize(env)
      @env = env
    end

    def env
      @env
    end

    def render(view_name, locals = {})
      filename = File.join("app", "views", controller_name, "#{view_name}.html.erb")
      template = File.read(filename)
      erb = Erubis::Eruby.new(template)
      erb.result(locals.merge(:env => env))
    end

    def controller_name
      klass = self.class
      klass = klass.to_s.gsub(/Controller$/, "")
      Rubidium.camelcase_to_snakecase(klass)
    end
  end
end