class CreatePictures < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures do |t|
      t.string :image_url
      t.string :caption
      t.date :taken_on
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
