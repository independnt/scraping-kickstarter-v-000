require 'nokogiri'
require 'pry'

#projects: kickstarter.css("li.project.grid_4")
#title: project.css("li.project.grid_4")
#image link: project.css("div.project-thumbnail a img").attribute("src").value
#description: project.css("p.bbcard_blurb").text
#location: project.css("ul.project-meta span.location-name").text
#percent funded:project.css("ul.project-stats li.first.funded strong").text.gsub("%","").to_i
def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  binding.pry
end

create_project_hash
