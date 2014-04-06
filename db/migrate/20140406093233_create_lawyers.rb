class CreateLawyers < ActiveRecord::Migration
  def change
    create_table :lawyers do |t|
      t.belongs_to :city, null: false
      t.string :code, null: false, limit: 250
      t.string :name, null: false, limit: 250
      t.integer :experience, null: false, default: 0
      t.float :rating, null: false, default: 0
      t.integer :charges_count, null: false, default: 0
      t.timestamps
    end
    add_index :lawyers, :city_id
    add_index :lawyers, :code, unique: true
    add_index :lawyers, :experience, unique: true
    add_index :lawyers, :rating, unique: true
  end
end
