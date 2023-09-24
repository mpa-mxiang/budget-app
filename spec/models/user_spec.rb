require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:groups) }
  it { should have_many(:entities) }

  it { should validate_presence_of(:name) }
end