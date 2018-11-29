require 'open-uri'
class CityScrapper
  def self.all_countries
    url = 'https://restcountries.eu/rest/v2/'
    raw_data = open(url).read
    json_data = JSON.parse(raw_data)
    json_data.first
    countries = []
    json_data.each do |country|
      country = {
        name: country["name"],
        language: country["languages"].first["name"],
        language_code: country["languages"].first["iso639_1"]
      }
      countries << country
    end
    binding.pry
  end
end
