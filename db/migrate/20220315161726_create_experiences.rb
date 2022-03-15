class CreateExperiences < ActiveRecord::Migration[6.1]
  def change
    create_table :experiences do |t|
      t.string :name
      t.text :description
      t.string :address
      t.date :date
      t.integer :capacity
      t.float :price
      t.references :host, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
