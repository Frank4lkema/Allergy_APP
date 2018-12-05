require 'open-uri'
class CityScrapper
  def self.all_countries
    create_place(create_maps(fetch_api))
  end

  def self.fetch_api
    url = 'https://restcountries.eu/rest/v2/'
    JSON.parse(open(url).read)
  end

  def self.create_maps(json_data)
    countries = []
    json_data.each do |country|
      country = {
        country: country["name"],
        language: country["languages"].first["name"],
        language_code: country["languages"].first["iso639_1"]
      }
      countries << country
    end
    countries
  end

  def self.create_place(places)
    places.each do |place|
      Place.create!(place)
    end
  end
end
