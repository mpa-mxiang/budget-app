require 'rails_helper'

RSpec.describe Group, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:entity) }  
  it { should validate_presence_of(:name) }
end