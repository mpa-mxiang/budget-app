require 'rails_helper'

RSpec.describe Entity, type: :model do
  it { should validate_presence_of(:amount) }
  it { should validate_presence_of(:name) }
end
