require 'rubygems';
require 'sinatra';
require 'haml'
require 'sass'

set :views, :scss => 'public/css/scss', :haml => 'views', :default => 'views'

helpers do
  def find_template(views, name, engine, &block)
    _, folder = views.detect { |k,v| engine == Tilt[k] }
    folder ||= views[:default]
    super(folder, name, engine, &block)
  end

  def cloud_url(url)
    '//guppy.io/' + url
  end
end

get '/' do
  haml :index, layout: :layout
end

get '/load/:module' do
  content_type 'text/css', :charset => 'utf-8'
  scss ('_' + params[:module]).to_sym, :style => :expanded
end