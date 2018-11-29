require 'open-uri'
class CityScrapper
  def self.all_countries
    json_data = fetch_api
    countries = create_maps(json_data)
    create_place(countries)
  end

  def fetch_api
    url = 'https://restcountries.eu/rest/v2/'
    raw_data = open(url).read
    JSON.parse(raw_data)
  end

  def create_maps(json_data)
    countries = []
    json_data.each do |country|
      country = {
        name: country["name"],
        language: country["languages"].first["name"],
        language_code: country["languages"].first["iso639_1"]
      }
      countries << country
    end
    return countries
  end

  def create_place(places)
    places.each do |place|
      Place.create!(place)
    end
  end
end
