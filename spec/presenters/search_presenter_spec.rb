require 'rails_helper'

describe SearchPresenter do
  subject { SearchPresenter.new }

  it 'exists' do
    expect(subject).to be_a(SearchPresenter)
  end

  context 'instance methods' do
    context '#saving_projects' do
      it 'returns all projects with a link to water' do

        expect(subject.saving_projects.count).to eq(10)
        expect(subject.saving_projects.first).to be_a(Project)
      end
    end
  end
end
