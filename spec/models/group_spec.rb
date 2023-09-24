require 'rails_helper'

RSpec.describe Group, type: :model do
  it { should have_many(:user) }
  it { should have_many(:entity) }
  it { should validate_presence_of(:name) }
end