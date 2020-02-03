class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.references :imageable, polymorphic: true, null: false
      t.string :image_data

      t.timestamps
    end
  end
end
