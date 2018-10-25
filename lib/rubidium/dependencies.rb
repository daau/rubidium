require_relative "utilities"

class Object
  def self.const_missing(c)
    require Rubidium.camelcase_to_snakecase(c.to_s)
    Object.const_get(c)
  end
end