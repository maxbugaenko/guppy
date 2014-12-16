require 'rubygems';
require 'sinatra';
require 'haml'
require 'haml/helpers'
require 'sass'
require 'guppy'

guppy = Guppy::Client.new do |guppy|
  guppy.config[:style] = 'compressed'
  guppy.scss_path = "/code/guppy/public/css/scss"
  guppy.config['main-font'.to_sym] = 'monaco';
  guppy.config['h-font'.to_sym] = 'monaco';
  guppy.config['switch-orientation-point-medium'.to_sym] = '1100px';
  guppy.config['switch-orientation-point-mobile'.to_sym] = '600px';
  guppy.config['menu-aside-width'.to_sym] = '220px';
  guppy.config['background-color'.to_sym] = '#fff';
  guppy.config['base-font-size'.to_sym] = '20px';
  guppy.config['controls-depth'.to_sym] = '1px';
  guppy.config['controls-text-color'.to_sym] = '#fbfbfb';
  guppy.config['controls-border-radius'.to_sym] = '4px';
  guppy.config['controls-default-color'.to_sym] = 'darken($background-color, 25)';
  guppy.config[:success] = '#fd5559';
  guppy.config[:green] = '#3688c2';
  guppy.config[:warning] = '#4e4e4e';
  guppy.config[:info] = 'lighten(#394e63, 20)';
  guppy.config[:info] = '#4d8cdf';
  guppy.config['text-color'.to_sym] = 'lighten(#4e4e4e, 20)';
  guppy.config['inputs-background'.to_sym] = 'darken($background-color, 7)';
  guppy.config['controls-color-list'.to_sym] = {
    success: guppy.config[:success],
    warning: guppy.config[:warning],
    green: guppy.config[:green],
    info: guppy.config[:info],
    default: '#cacaca'
  }
end

before do
  @guppy = guppy
end

set :views, :scss => settings.root + '/public/css/scss', :haml => 'views', :default => 'views'
# enable :show_exceptions

helpers do
  def find_template(views, name, engine, &block)
    _, folder = views.detect { |k,v| engine == Tilt[k] }
    folder ||= views[:default]
    super(folder, name, engine, &block)
  end

  def cloud_url(url)
    "<span class='lighten-default'>guppy.io/#{url}</span>"
  end
end

get '/' do
  haml :index, layout: :layout
end

get '/:module' do
  begin
    pass unless @guppy.module_exists?
    response = @guppy.render(params[:module])
    puts response
    scss response, style: :compressed
  rescue RuntimeError, Sass::SyntaxError => ex
    content_type 'text/html'
    @message = ex.message
    @more = ex.backtrace_locations
    @more2 = response
    @backtrace = ex.backtrace.to_s
    haml :error, layout: :layout
  rescue Guppy::NoModule => msg
    @message = "module #{msg.message} not found"
  end
end

get '/test' do
  haml :test, layout: :test_layout
end