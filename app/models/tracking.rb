class Tracking < ApplicationRecord
  belongs_to :illness
  validates :date, presence: true
end
