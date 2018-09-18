class GoogleGeocodeService
  def initialize(countries)
    @country = countries
  end

  def coordinates
    @coordinates = JSON.parse(response.body, symbolize_names: true)[:results]
  end

  private

  def response
    conn.get("/maps/api/geocode/json?address=#{@country}")
  end

  def conn
    Faraday.new(url: "https://maps.googleapis.com") do |faraday|
      faraday.params["key"] = ENV['JUST_KEY']
      faraday.adapter Faraday.default_adapter
    end
  end
end
