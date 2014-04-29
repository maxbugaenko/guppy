require 'rubygems';
require 'sinatra';

set :erb, :content_type => 'text/xml'
set :scss => :elements

get '/' do
  erb :index
end