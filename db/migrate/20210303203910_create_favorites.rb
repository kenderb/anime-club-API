class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.belongs_to :user, foreign_key: true
      t.integer :anime_id
      
      t.timestamps
    end
  end
end