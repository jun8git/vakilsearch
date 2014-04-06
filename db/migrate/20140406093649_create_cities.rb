class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name, null: false, limit: 250
      t.integer :lawyers_count, null: false, default: 0
      t.timestamps
    end
  end
end
