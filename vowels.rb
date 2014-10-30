text = ARGV

target = File.open(text[0]).read
words = target
regexp = /\/\*![^*]*\*+(?:[^*\/][^*]*\*+)*\//
regexp_2 = /<TAG\b[^>]*>(.*?)<TAG>/
regexp_3 = /<([A-Z][A-Z0-9]*)\b[^>]*>(.*?)/
regexp_4 = /<.*?>/
regex_vowel = /\w*[aeiou]\w*[aeiou]\w*[aeiou]\w*/
words.gsub!(regexp, '')
words.gsub!(regexp_2, '')
words.gsub!(regexp_3, '')
words.gsub!(regexp_4, '')
hash = {}
words=words.scan(regex_vowel).flatten#.select{|w| w.length >1}
words.each do |word|
	hash[word] ||= 0
	hash[word] += 1
end

puts words.each{|k,v| puts "#{k}, #{v}"}
