require 'pry'
require 'nokogiri'
require 'open-uri'

html = open("https://web.archive.org/web/20160227204808/http://flatironschool.com/team")
doc = Nokogiri::HTML(html)

instructors = doc.css("#instructors .team-holder .person-box")
instructors.each { |i| puts "Flatiron <3 #{i.css('h2').text}" }
# binding.pry
