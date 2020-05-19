class Federation < ApplicationRecord
  has_many :teams
  has_many :areas, through: :teams

  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 10, maximum: 300 }
end
