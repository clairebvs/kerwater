class SearchPresenter
  def projects
    conn = Faraday.new(url: "https://search.worldbank.org") do |faraday|
      faraday.headers["X-api-Key"] = ENV['DEV-KEY']
      faraday.adapter Faraday.default_adapter
    end

    response = conn.get("/api/v2/projects?format=json&theme_exact=Water+resource+management&source=IBRD&kw=N")
    parsed = JSON.parse(response.body, symbolize_names: true)[:projects]
    parsed.each_pair do |key, value|
       Project.new(parsed[key])
    end
    # JSON.parse(response.body, symbolize_names: true)[:projects].each_pair do |key, value|
    #   require "pry"; binding.pry
    #    Project.new(value[key])
    # end

  end
end
