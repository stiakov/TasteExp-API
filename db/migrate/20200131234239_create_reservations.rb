class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :commerce, null: false, foreign_key: true
      t.integer :seat
      t.integer :date_time

      t.timestamps
    end
  end
end
