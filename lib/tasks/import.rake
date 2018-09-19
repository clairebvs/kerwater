namespace :import do
  desc "Import projects data from WorldBank API call"

  task project: :environment do
    search_presenter = SearchPresenter.new
    search_presenter.saving_projects
  end

  task data_update: :environment do
    CheckUpdateApiJob.perform
  end
end
