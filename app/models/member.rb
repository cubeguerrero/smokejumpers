class Member < ApplicationRecord
  belongs_to :team

  validates :name, presence: true
  validates :age, presence: true, numericality: { greater_than_or_equal_to: 21 }
  validates :bio, presence: true, length: { minimum: 10, maximum: 500 }
end
