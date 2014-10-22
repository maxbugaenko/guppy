require 'rubygems'
require 'haml'
require 'sinatra'

enable :sessions

get '/' do
  haml :index, :layout => :layout
end