class Favorite < ApplicationRecord
  belongs_to :user
  validates_uniqueness_of :user_id, scope: [:anime_id]
end
