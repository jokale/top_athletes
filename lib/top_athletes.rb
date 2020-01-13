require "nokogiri"
require "open-uri"
require_relative "./top_athletes/version"
require_relative "./top_athletes/cli"
require_relative "./top_athletes/scraper"

module TopAthletes
  class Error < StandardError; end
  # Your code goes here...
end
