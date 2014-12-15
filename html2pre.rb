require 'rubygems';
require 'rouge';

# make some nice lexed html
source = File.read('code.html')
formatter = Rouge::Formatters::HTML.new(:css_class => 'highlight')
lexer = Rouge::Lexers::Shell.new

File.open("highlighted.html", "a") {
  |file|
    file.write(formatter.format(lexer.lex(source)))
    #file.write(Rouge::Themes::ThankfulEyes.render(:scope => '.highlight'))
}

# Get some CSS


