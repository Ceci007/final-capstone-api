require 'rails_helper'

RSpec.describe Illness, type: :model do
  it { should belong_to(:user) }
  it { should have_many(:trackings).dependent(:destroy) }
  it { should validate_presence_of(:name) }
end
