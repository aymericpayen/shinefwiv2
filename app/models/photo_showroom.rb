class PhotoShowroom < ApplicationRecord
  attr_accessor :cloudinary_url
  belongs_to :showroom
end
