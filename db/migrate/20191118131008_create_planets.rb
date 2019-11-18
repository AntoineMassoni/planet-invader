class CreatePlanets < ActiveRecord::Migration[5.2]
  def change
    create_table :planets do |t|
      t.string :name
      t.integer :price
      t.integer :capacity
      t.text :description
      t.string :stellar_coordinates
      t.text :activities
      t.string :weather
      t.string :local_population
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
