class SearchPresenter
  def projects
    conn = Faraday.new(url: "https://search.worldbank.org") do |faraday|
      faraday.headers["X-api-Key"] = ENV['DEV-KEY']
      faraday.adapter Faraday.default_adapter
    end

    response = conn.get("/api/v2/projects?format=json&theme_exact=Water+resource+management&source=IBRD&kw=N")

    JSON.parse(response.body, symbolize_names: true)[:projects].map do |id, project_data|
       Project.new(project_data)
    end
  end
end
