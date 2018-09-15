class GoogleGeocodeService

  def initialize
    @country = projects_countries
  end

  def projects_countries
    search = SearchPresenter.new
    search.projects.map do |project|
    # getting an array of countries
      project.country
    end
  end

  def coordinates
    @coordinates = JSON.parse(response.body, symbolize_names: true)[:results]
  end

  def lat_long
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
