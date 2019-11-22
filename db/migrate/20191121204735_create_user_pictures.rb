class CreateUserPictures < ActiveRecord::Migration[5.2]
  def change
    create_table :user_pictures do |t|
      t.string :photo
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
