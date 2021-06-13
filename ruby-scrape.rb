require "nokogiri"
require "httparty"
require "byebug"

def scraper
  url = "https://www.linkedin.com/jobs/search/?keywords=application%20security%20engineer&position=1&pageNum=0"
  unparsed_page = HTTParty.get(url)
  parsed_page = Nokogiri::HTML(unparsed_page)
  byebug
end

scraper
