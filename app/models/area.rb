class Area < ApplicationRecord
  has_many :teams
  has_many :federations, through: :teams

  validates :name, presence: true
end
