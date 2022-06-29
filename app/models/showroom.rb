class Showroom < ApplicationRecord
  has_many_attached :photos
  validates :name, :description, :starting_from, presence: true
end
