text = ARGV

target = File.open(text[0]).read
words = target
regexp = /\/\*![^*]*\*+(?:[^*\/][^*]*\*+)*\//
regexp_2 = /<TAG\b[^>]*>(.*?)<TAG>/
regexp_3 = /<([A-Z][A-Z0-9]*)\b[^>]*>(.*?)/
regexp_4 = /<.*?>/
regexp_5 = /\s+/
regexp_6 = /(,)/
words.gsub!(regexp, '')
words.gsub!(regexp_2, '')
words.gsub!(regexp_3, '')
words.gsub!(regexp_4, '')
words.gsub!(regexp_5, ' ')
words.gsub!(regexp_6, ' ')
puts words