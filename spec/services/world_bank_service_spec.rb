require 'rails_helper'

describe WorldBankService do
  subject { WorldBankService.new }
   xit "exists" do
    expect(subject).to be_a WorldBankService
  end
   context "instance methods" do
    context "#projects" do
      xit "returns an array of hashes with projects data" do
        raw_projects = subject.water_projects
        raw_project  = raw_projects.first
        expect(raw_projects.count).to eq 10
        expect(raw_project).to have_key :regionname
        expect(raw_project).to have_key :project_name
        expect(raw_project).to have_key :countryshortname
        expect(raw_project).to have_key :project_name
        expect(raw_station).to have_key :boardapprovaldate
        expect(raw_station).to have_key :closingdate
        expect(raw_station).to have_key :lendprojectcost
        expect(raw_station).to have_key :teamleadname
      end
    end
  end
end
