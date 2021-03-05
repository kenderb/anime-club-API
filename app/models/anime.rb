class Anime < ApplicationRecord
  validates_presence_of :url_image
  validates_uniqueness_of :description
end
