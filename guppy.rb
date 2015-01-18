require 'rubygems';
require 'sinatra';
require 'haml'
require 'haml/helpers'
require 'sass'
require 'yaml'
require_relative 'gem/lib/guppy'

Guppy::Client.new('/code/guppy/config.yml')

get '/test' do
  haml :test, layout: :layout
end

get '/load/:module' do
	puts (mname = "_#{params[:module]}")
  content = IO.readlines("#{Guppy.config.options['scss']}/#{mname}.scss")
  content
end