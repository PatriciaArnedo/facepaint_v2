class CreateSaveFilters < ActiveRecord::Migration[6.0]
  def change
    create_table :save_filters do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :filter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
