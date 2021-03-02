class Medicine < ApplicationRecord
  belongs_to :tracking
  validates :name, presence: true
  validates :quantity, presence: true
end
