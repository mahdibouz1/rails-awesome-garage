class Favourite < ApplicationRecord
  belongs_to :car

  validates :car, presence: true
  validates :car_id, uniqueness: true
end
