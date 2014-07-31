require 'rubygems'
require 'nokogiri'
require 'open-uri'

url = 'http://www.myrecipes.com/recipe/arugula-grape-sunflower-seed-salad-10000001734329/'
doc = Nokogiri::HTML(open(url))
puts doc.at_css("title").text
doc.css(".recipeDetails").each do |recipeDetails|
	ingredients = recipeDetails.at_css(".clr+ ul").text
	puts "For this receipe, you will need: #{ingredients}"
end

