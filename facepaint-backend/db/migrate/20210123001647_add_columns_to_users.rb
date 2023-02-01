class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :avatar, :string
    add_column :users, :name, :string
    add_column :users, :bio, :string
    add_column :users, :instagram, :string
  end
end
