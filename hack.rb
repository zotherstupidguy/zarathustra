require 'pdf-reader'
require 'easy_translate'
book = PDF::Reader.new("sample.pdf")

EasyTranslate.api_key = "AIzaSyAIlc3mTgYLxGnSXgyiG4brh5RudmwrWAI"

book.pages.each do |page|
  puts page.text
  source = page.text
  EasyTranslate.translate('source', :to => 'es') # => "Hola, mundo"
  sleep 3
end
