require 'rails_helper'

describe Project, type: :model do
  it {should have_many(:comments)}

end
