require "nokogiri"
require "fileutils"
require "open-uri"

version = "2.0.0"
FileUtils.mkdir(File.join("data","classes",version)) unless File.exists? File.join("data","classes",version)
system "rm data/classes/#{version}/*.html"
html_file = open("http://ruby-doc.org/core-2.0.0/")
doc = Nokogiri::HTML(html_file)
ruby_classes_all = doc.css("div#class-index .entries .class a")

ruby_clasess = "<h1>Core-#{version}<h1>\n\n"

ruby_classes_all.each do |rbc|
	
	class_name = rbc.text
	class_name_friendly_url = class_name.gsub(/[^a-zA-Z0-9]/,"")

	class_file_content = "<h1>#{class_name}</h1>\n\n"
	# puts "Getting info about class #{class_name}"
	puts "Trying: http://ruby-doc.org/core-#{version}/#{rbc.attr('href')}"

	class_html_file = open("http://ruby-doc.org/core-#{version}/#{rbc.attr('href')}")
	class_doc = Nokogiri::HTML(class_html_file)
	class_methods_all = class_doc.css("#method-list-section ul li a")
	puts "There is #{class_methods_all.size} methods for #{class_name}"
	if class_methods_all.size > 0
		class_methods_all.each do |cm|
			class_file_content += "<h2>#{cm.text}</h2>\n\n"
		end
	end
	puts "Creating file for #{class_name} in #{class_name_friendly_url}"
	File.open(File.join("data","classes",version,class_name_friendly_url+".html"),"w") {|f| f.write class_file_content}

	ruby_clasess += "<p><a href='#{class_name_friendly_url}'>#{class_name}</a></p>"
end

File.open(File.join("data","classes",version,"index_#{version}.html"),"w") {|f| f.write ruby_clasess}

