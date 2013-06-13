desc "Generate site"
task :default do
	sh "compass compile"
	sh "jekyll"
end

desc "New post"
task :post, :title do |t, args|
	if args.title
		title = args.title
	else
		print "Post title: "
		title = gets.chomp
	end
	if title.empty? || title.nil?
		title = "new-post-#{Time.now.to_i}"
	end
	title_url = title.downcase.gsub(/\ /,"_").gsub(/[^a-zA-Z0-9_\-]/i,"")
	date = Time.now.to_s

	new_post = <<-END
---
title: "#{title}"
categories: []
tags: []
author: "Your name"
layout: post
date: #{date}
---

This is your blog content 

END

	filename = "_posts/#{Time.now.year}-#{Time.now.mon}-#{Time.now.day}-#{title_url}.md"
	sh "touch #{filename}"
	File.open(filename, 'w') {|f| f.write(new_post) }

	puts "New post created in\n#{filename}"

end



desc "Preview the site in localhost"
task :serve do
	sh "jekyll serve --watch"
end

