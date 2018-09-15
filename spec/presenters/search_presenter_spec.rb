require 'rails_helper'

describe SearchPresenter do
  subject { SearchPresenter.new }

  it 'exists' do
    expect(subject).to be_a(SearchPresenter)
  end

  context 'instance methods' do
    context '#projects' do
      it 'returns all projects with a link to water' do

        expect(subject.projects.count).to eq(10)
        expect(subject.projects.first).to be_a(Project)
      end
    end
    context '#locations' do
      it 'returns the location for all projects' do

        expect(subject.locations.count).to eq 8
        expect(subject.locations.first).to be_a(Location)
      end
    end
  end
end
