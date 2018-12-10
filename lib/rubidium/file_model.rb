require "multi_json"
module Rubidium
  module Model
    class FileModel
      def initialize(filename)
        @filename = filename

        basename = File.split(filename)[-1]
        @id = File.basename(basename, ".json").to_i
        
        obj = File.read(filename)
        @hash = MultiJson.load(obj)
      end

      def [](name)
        @hash[name.to_s]
      end

      def []=(name, value)
        @hash[name.to_s] = value
      end

      def self.find(id)
        begin
          FileModel.new("db/dogs/#{id}.json")
        rescue
          return nil
        end
      end

      def self.all
        files = Dir["db/dogs/*.json"]
        files.map { |f| FileModel.new(f) }
      end

      def self.create(attrs)
        # TODO
      end
    end
  end
end