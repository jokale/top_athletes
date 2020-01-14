require "nokogiri"
require "open-uri"
require "pry"
require_relative "./top_athletes/version"
require_relative "./top_athletes/cli"
require_relative "./top_athletes/scraper"
require_relative "./top_athletes/athletes"

module TopAthletes
  class Error < StandardError; end
  # Your code goes here...
end
