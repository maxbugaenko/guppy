require 'rubygems';
require 'sinatra';
require 'haml'
require 'guppy'

get '/test' do
	haml :index, layout: :layout
end

get '/load/:module' do
	to_read = "#{settings.public_folder}/css/scss/_#{params[:module]}.scss"
	File.exist?(to_read) ? IO.readlines(to_read) : 'GUPPY.IO: no such module. try another one'
end

error do
	'something went wrong'
end