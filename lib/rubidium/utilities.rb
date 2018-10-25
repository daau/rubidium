module Rubidium
  def self.camelcase_to_snakecase(string)
    string.gsub(/::/, "/").                    # CamelCase::Module -> CamelCase/Module
    gsub(/([A-Z]+)([A-Z][a-z])/,'\1_\2').      # CAPSClass -> CAPS_Class; (1) Multiple Caps letters  + (2) Single caps letter + Multiple lowercase letter
    gsub(/([a-z\d])([A-Z])/,'\1_\2').          # b4M -> b4_M
    tr("-","_").
    downcase
  end
end