class CreatePhotoShowrooms < ActiveRecord::Migration[6.1]
  def change
    create_table :photo_showrooms do |t|
      t.text :url
      t.references :showroom, null: false, foreign_key: true

      t.timestamps
    end
  end
end
