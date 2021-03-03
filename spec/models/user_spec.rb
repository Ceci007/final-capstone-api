require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:illnesses).dependent(:destroy) }
  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:password) }
  it { should validate_length_of(:username).is_at_least(4) }
  it { should validate_length_of(:password).is_at_least(6) }
end
