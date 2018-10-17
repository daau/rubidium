module Rubidium
  class Application
    def get_controller_and_action(env)
      _, controller_name, action, after = env["PATH_INFO"].split("/", 4)
      controller_name = controller_name.capitalize
      controller_name += "Controller"

      [Object.const_get(controller_name), action]
    end
  end
end