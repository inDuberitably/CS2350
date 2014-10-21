text = ARGV

target = File.open(text[0]).read

words = target.gsub(/<("[^"]*"|'[^']*'|[^'">])*>/, ' ')

puts words
