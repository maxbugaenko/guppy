require 'rubygems';
require 'sinatra';
require 'haml'
require 'haml/helpers'
require 'guppy'

get '/' do
  haml :index, layout: :layout
end