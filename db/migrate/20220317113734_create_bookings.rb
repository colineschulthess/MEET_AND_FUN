class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :participant, null: false, foreign_key: { to_table: :users }
      t.references :experience, null: false, foreign_key: true

      t.timestamps
    end
  end
end
