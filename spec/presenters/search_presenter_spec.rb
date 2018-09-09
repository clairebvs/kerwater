require 'rails_helper'

describe SearchPresenter do
  it 'exists' do
    search_presenter = SearchPresenter.new
    expect(search_presenter).to be_a(SearchPresenter)
  end

  context 'instance methods' do
    context '#projects' do
      it 'returns all projects with a link to water' do
        search_presenter = SearchPresenter.new

        expect(search_presenter.projects.count).to eq(10)
        expect(search_presenter.projects.first).to be_a(Project)
      end
    end
  end
end
