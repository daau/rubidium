require "rubidium/utilities"

class Object
  def self.const_missing(c)
    return nil if @recursing

    @recursing = true
    require Rubidium.camelcase_to_snakecase(c.to_s)
    klass = Object.const_get(c)
    @recursing = false

    klass
  end
end