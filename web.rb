require 'rubygems';
require 'sinatra';

set :erb, :content_type => 'text/xml'

get '/' do
  erb :index
end

get '/controls' do
  erb :controls
end