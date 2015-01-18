require 'rubygems';
require 'sinatra';
require 'haml'
require 'sass'
require 'guppy'

Guppy::Client.new('./config.yml')

get '/test' do
  haml :test, layout: :layout
end

get '/load/:module' do
	IO.readlines("#{Guppy.config.options['scss']}/_#{params[:module]}.scss")
end