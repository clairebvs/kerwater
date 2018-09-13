class GoogleGeocodeService

  def initialize
    @country = projects_countries
  end

  def projects_countries
    search = SearchPresenter.new
    projects = search.projects
    projects.map do |project|
    # getting an array of country 
      project.country
    end
  end

  def coordinates
    JSON.parse(response.body, symbolize_names: true)
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
