class CreateFilters < ActiveRecord::Migration[6.0]
  def change
    create_table :filters do |t|
      t.string :name
      t.string :img
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
