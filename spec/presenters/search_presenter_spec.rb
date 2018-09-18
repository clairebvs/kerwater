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
    context '#service' do
      it 'returns a WorldBankService' do
        expect(subject.service).to be_a(WorldBankService)
      end
    end

    context '#raw_projects' do
      it 'returns raw data of projects' do
        expect(subject.raw_projects.count).to eq(10)
        expect(subject.raw_projects.first[1][:regionname]).to eq("Latin America and Caribbean")
        expect(subject.raw_projects.first[1][:project_name]).to eq("Modernization of Water Supply and Sanitation Services")
        expect(subject.raw_projects.first[1][:closingdate]).to eq("2023-12-31T00:00:00Z")
      end
    end

    context '#countries' do
      it 'returns an array of countries where a project is happening' do
        expect(subject.countries.count).to eq(10)
        expect(subject.countries[0]).to eq('Peru')
        expect(subject.countries[1]).to eq('Cameroon')
      end
    end
  end
end
