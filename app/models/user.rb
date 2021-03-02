class User < ApplicationRecord
  has_many :illnesses, dependent: :destroy
  validates :username, presence: true
end
