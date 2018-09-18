class WorldBankService
  def water_projects
    JSON.parse(response.body, symbolize_names: true)[:projects]
  end

  private

  def response
    conn.get("/api/v2/projects?format=json&theme_exact=Water+resource+management&source=IBRD&kw=N")
  end

  def conn
    conn = Faraday.new(url: "https://search.worldbank.org") do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end
end
