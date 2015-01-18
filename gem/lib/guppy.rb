require 'rack'
require 'rack/request'
require 'sass'
require 'remote-sass'
require 'hashie'
require 'hashie/mash'
require 'net/http'
require 'time'
require 'open-uri'

RemoteSass.location = "http://localhost:4567/load/"

module Sass::Script::Functions

  def yml(path)
		Guppy::Client.new('/code/guppy/config.yml')
    params = path.to_s.gsub(/"|^ +| $+|\n/i,'').split('/')
		if params.count > 1
			res = (Guppy.config[params.first][params.last]).to_s
			if res.to_s.include?('#')
				# puts 'it is color ' + res
				# puts 'THAT COLOR' if res.eql?('#fafafa')
				# puts res.class.to_s
				# puts 'response: '
				resp = Sass::Script::Value::Color.from_hex(unquote(res))
			else
				resp = Sass::Script::Value::String.new(res)
			end
			# puts resp
			resp
		else
			puts 'one param'
			opts = {}
			Guppy.config[params.first].each do |item, val|
				# resp += item.to_s + ' ' + val.to_s + ","
				# opts.push(Sass::Script::Value::List.new([item.to_s, val.to_s].shift.strip, :space))
				if !val.is_a?(Hash) && val.include?('#')
					to_assign = Sass::Script::Value::Color.from_hex(unquote(val.to_s))
				else
					to_assign = Sass::Script::Value::String.new(val.to_s)
				end
				opts[Sass::Script::Value::String.new(item.to_s)] = to_assign
			end
			# resp = resp[0..-3]
			# puts opts.to_s
			# vals = resp.split(',')
			# res = Sass::Script::Value::List.new(opts, :comma)
			# puts res.to_a.to_s
			puts opts.inspect
			Sass::Script::Value::Map.new(opts)
		end
  end

  # def load(url)
  #   Guppy::Client.new('/code/guppy/config.yml')
  #   filename = URI.parse(url).path
  #   puts 'FNAME: ' + filename
  #   content = IO.readlines(url)
  #   open("#{Guppy.config.options.scss}/guppy/_#{filename}.scss", 'w') do |f|
  #     content.each do |line|
  #       f.puts(line)
  #     end
  #   end
  # end

  declare :yml, [:string]
  # declare :load, [:string]

end

# twitter login implementation module
module Guppy

  # twitter login implementation class
  class NoConfig < Exception; end
  class NoModule < Exception; end

  class << self
    attr_accessor :config
  end

  class Client

    def initialize(filename = '')
      Guppy.config ||= Hashie::Mash.load(filename)
    end

    def sass(name)
      Sass::Engine.new(
        File.read("#{Guppy.config.options.scss}/#{name}.scss"),
        {
          syntax: :scss,
          style: :compressed,
          load_paths: [Guppy.config.options.scss]
        }
      )
    end

    def module_exists?(name)
      if File.exists?("#{Guppy.config.options.scss}/#{name}.scss")
        p "#{name} exists"
      else
        p "#{name} dont exists"
      end
    end

    def render(modss)
      # parse_variables
      mods = (modss.instance_of?(String) ? modss.split(',') : [modss])
      sass_response ||= ''
      mods.insert(0, 'general')
      mods.insert(1, 'mixins')
      mods.insert(1, 'animations')
      if mods.include?('no-animations')
        mods
          .pop(mods.index('animations'))
          .pop(mods.index('no-animations'))
      end
      mods.uniq.each do |mod|
        sass_response +=
          sass("#{mod}")
            .render
            .to_s if module_exists?("#{mod}.scss")
      end
      sass_response
    end
  end
end
#
# module Sass
# 	class Engine
# 		DIRECTIVES.add(:remote)
#
# 		def initialize(template, options = {})
# 			options.merge!(importer: Sass::Importers::HTTP)
# 		end
# 	end
#
# 	def parse_import_directive(parent, line, root, value, offset)
# 		puts 'FUCK YOU'
# 		raise SyntaxError.new("Illegal nesting: Nothing may be nested beneath import directives.",
# 			:line => @line + 1) unless line.children.empty?
#
# 		scanner = Sass::Util::MultibyteStringScanner.new(value)
# 		values = []
#
# 		loop do
# 			unless (node = parse_import_arg(scanner, offset + scanner.pos))
# 				raise SyntaxError.new(
# 					"Invalid @import: expected file to import, was #{scanner.rest.inspect}",
# 					:line => @line)
# 			end
# 			values << node
# 			break unless scanner.scan(/,\s*/)
# 		end
#
# 		if scanner.scan(/;/)
# 			raise SyntaxError.new("Invalid @import: expected end of line, was \";\".",
# 				:line => @line)
# 		end
#
# 		values
# 	end
#
# end
#
# module Sass
# 	module SCSS
# 		class Parser
# 			@@loaded ||= nil
# 			DIRECTIVES.add(:remote)
#
# 			def remote_directive(start_pos)
# 				values = []
# 				loop do
# 					values << expr!(:import_arg)
# 					puts 'VALEEEE: ' + values.to_s
# 					break if use_css_import?
# 					break unless tok(/,/)
# 					ss
# 				end
# 				puts 'VALEEEE: ' + values.to_s
# 				values
# 			end
#
# 			def import_arg
# 			# 	start_pos = source_position
# 			# 	# return unless (str = string) || (uri = tok?(/url\(/i))
# 			# 	# @@loaded ||= open(str.to_s) {|f| f.read }
# 			# rescue => msg
# 			# 	puts msg.backtrace
# 			# 	puts msg.class.to_s
# 			# 	puts msg.message
# 			end
# 		end
# 	end
# end

module Sass
	module Importers
		class HTTP < Base
			def initialize root
				@root = URI.parse root
				unless scheme_allowed? @root
					raise ArgumentError, "Absolute HTTP URIs only"
				end
			end

			private

			def _find uri, options
				raise ArgumentError, "Absolute HTTP URIs only" unless scheme_allowed? uri
				# syntax = get_syntax uri
				Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
					filename = File.basename(uri.to_s, File.extname(uri.to_s))
					uri = "#{uri.scheme}://#{uri.host}:#{uri.port}/load/#{filename}"
					# puts 'uri: ' + uri.to_s
					response = http.get uri.to_s
					response.value
					options[:importer] = self
					options[:filename] = uri.to_s
					options[:syntax] = :scss
					Sass::Engine.new response.body, options
				end
			rescue => msg
				puts msg.class.to_s
				puts msg.backtrace
				puts msg.message
			end
		end
	end
end