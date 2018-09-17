require 'rails_helper'

describe LocationPresenter do
  subject { LocationPresenter.new }

  it 'exists' do
    expect(subject).to be_a(LocationPresenter)
  end

  # context 'instance methods' do
  #   context '#locations' do
  #     it 'returns the location for all projects' do
  #
  #       expect(subject.locations.count).to eq 7
  #       expect(subject.locations.first).to be_a(Location)
  #     end
  #   end
  # end
end
