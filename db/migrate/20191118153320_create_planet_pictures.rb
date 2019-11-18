class CreatePlanetPictures < ActiveRecord::Migration[5.2]
  def change
    create_table :planet_pictures do |t|
      t.string :photo
      t.references :planet, foreign_key: true

      t.timestamps
    end
  end
end
