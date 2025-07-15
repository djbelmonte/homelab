class UpdateBookingsTable < ActiveRecord::Migration[8.0]
  def change
    remove_column :bookings, :title, :string
    rename_column :bookings, :description, :notes
  end
end
