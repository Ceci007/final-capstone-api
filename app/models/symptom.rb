class Symptom < ApplicationRecord
  belongs_to :tracking
  validates :name, presence: true
  validates :intensity, presence: true
end
