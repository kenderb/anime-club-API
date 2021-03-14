class CreateAnimes < ActiveRecord::Migration[6.0]
  def change
    create_table :animes do |t|
      t.string :title
      t.string :url_image
      t.text :description

      t.timestamps
    end
  end
end