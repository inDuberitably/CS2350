require 'nokogiri'

html = Nokogiri::HTML(IO.read 'firstmonday.html')

puts html

