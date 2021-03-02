class Tracking < ApplicationRecord
  belongs_to :illness
  has_many :medicines, dependent: :destroy
  has_many :symptoms, dependent: :destroy
  validates :date, presence: true
end
