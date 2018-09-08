require 'rails_helper'

describe SearchPresenter do
  it 'exists' do
    search_presenter = SearchPresenter.new
    expect(search_presenter).to be_a(SearchPresenter)
  end
end
