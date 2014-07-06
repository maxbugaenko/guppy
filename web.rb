require 'rubygems';
require 'sinatra';
require 'haml'

FILE = './msgs'

def read_messages(lines)
  if !File.exist?(FILE)
    open(FILE, "w") do |f|
      f.puts("hello chat")
    end
  end
  IO.readlines(FILE)[1..lines]
end

get '/' do
  @messages = read_messages(10)
  haml :talking, :layout => :layout
end

post '/send' do
  if !params[:message].nil?
    newcontent = read_messages(9).push(params[:message])
    open(FILE, 'w') do |f|
      newcontent.each do |line|
        f.puts(line)
      end
    end
  end
  redirect to("/")
end

get '/messages' do
  @messages = read_messages(10)
  haml :messages, :layout => false
end