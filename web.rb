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
  content = IO.readlines(FILE)
  if content.length < lines
    content
  else
    content[-lines..-1]
  end
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