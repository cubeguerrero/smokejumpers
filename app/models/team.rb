class Team < ApplicationRecord
  belongs_to :area
  belongs_to :federation
  has_many :members, dependent: :destroy

  validates :name, presence: true
  validates :area, presence: true
end
