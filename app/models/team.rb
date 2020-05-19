class Team < ApplicationRecord
  belongs_to :area
  belongs_to :federation

  validates :name, presence: true
  validates :area, presence: true
end
