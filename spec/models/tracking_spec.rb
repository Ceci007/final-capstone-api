RSpec.describe Tracking, type: :model do
  it { should belong_to(:illness) }
  it { should validate_presence_of(:date) }
end
