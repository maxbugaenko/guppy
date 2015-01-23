require 'rack'
require 'rack/request'
require 'sass'
require 'remote-sass'
require 'net/http'
require 'time'
require 'open-uri'

RemoteSass.location =  ENV['RACK_ENV'].nil? ? 'http://localhost:4567/load' : 'http://guppy.io/load'

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
					response = http.get uri.to_s
					response.value
					options[:importer] = self
					options[:filename] = uri.to_s
					options[:syntax] = :scss
					Sass::Engine.new response.body, options
				end
			end
		end
	end
end


