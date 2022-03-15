class AddColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string
    add_column :users, :age, :integer
    add_column :users, :sexe, :string
  end
end
