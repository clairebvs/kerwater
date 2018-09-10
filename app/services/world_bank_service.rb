class WorldBankService

  def water_projects
    JSON.parse(response.body, symbolize_names: true)[:projects]
  end
end
