class CreateCommerces < ActiveRecord::Migration[6.0]
  def change
    create_table :commerces do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :description
      t.references :country, null: false, foreign_key: true
      t.string :state
      t.string :city
      t.string :address
      t.string :landline
      t.string :mobile
      t.string :email
      t.string :website
      t.string :instagram
      t.references :commerce_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
