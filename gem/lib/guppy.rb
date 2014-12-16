module Guppy
  class NoConfig < Exception; end
  class NoModule < Exception; end;
  class Client
    attr_accessor :config
    attr_accessor :scss_path
    def initialize(&block)
      @config = Hash.new
      yield self if block_given?
    end

    def get(key)
      @config[key.to_sym]
    end

    def parse_variables
      temp = ""
      @config.each do |key, value|
        if value.is_a?(Hash)
          temp += "$#{key}: ("
          value.each do |key1, value1|
            temp += "#{key1} #{value1}, "
          end
          temp = temp[0..-3]
          temp += ");\n"
        else
          temp += "$#{key}: #{value};\n"
        end
      end
      @variables = temp
      puts temp
    end

    def sass_engine(file_name)
      Sass::Engine.new(
        @variables +
        create_scss('_mixins') +
        create_scss(file_name),
        {
          syntax: :scss,
          style: :compressed,
          load_paths: [scss_path]
        }
      )
    end

    def module_exists?(name)
      File.exists?("#{scss_path}/_#{name}.scss")
    end

    def render(file_name)
      parse_variables
      sass_response = ''
      modules = file_name.split(',') || [file_name]
      modules.insert(0, 'animations')
      modules -= ['animations', 'no-animations'] if modules.include?('no-animations')
      puts "MODULES: " + modules.uniq.to_s
      modules.uniq.each do |mod|
        puts 'MODULE: ' + mod
        raise Guppy::NoModule mod unless module_exists?(mod)
        sass_response += sass_engine("_#{mod}").render.to_s
        puts sass_response
      end
      sass_response
    rescue => mess
      raise mess.message
    end

    private

    def create_scss(file_name)
      File.read("#{scss_path}/#{file_name}.scss")
    end
  end
end
