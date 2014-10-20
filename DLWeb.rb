require 'open-uri'
first, second = ARGV
remote_base_url = first
name = second

saved_file = open(remote_base_url).read
local_file = open("#{name}.html", "w")
local_file.write(saved_file)


local_file.close	