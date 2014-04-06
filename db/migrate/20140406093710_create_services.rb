class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :code, null: false, limit: 250
      t.string :name, null: false, limit: 250
      t.timestamps
    end
    add_index :services, :code, unique: true
  end
end
