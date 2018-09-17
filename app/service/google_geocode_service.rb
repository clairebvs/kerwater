class GoogleGeocodeService

  def initialize
    @country = projects_countries.join(" ")
  end

  def projects_countries
    # Project.all.pluck(:country)
    ['Peru', 'Cameroon', 'India', 'China', 'Nepal', 'Vietnam', 'Tunisia', 'Indonesia']
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
