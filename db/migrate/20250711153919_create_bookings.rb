class CreateBookings < ActiveRecord::Migration[8.0]
  def change
    create_table :bookings do |t|
      t.string :title
      t.text :description
      t.string :status
      t.datetime :time
      t.string :address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
