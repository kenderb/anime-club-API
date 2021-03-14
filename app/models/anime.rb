class Anime < ApplicationRecord
  validates_presence_of :url_image
  validates_presence_of :title
end
