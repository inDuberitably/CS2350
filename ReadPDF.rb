require "pdf-reader"
reader = PDF::Reader.new("ConscientiousSoftwareCC.pdf")



reader.pages.each do |page|
  puts page.text
end
