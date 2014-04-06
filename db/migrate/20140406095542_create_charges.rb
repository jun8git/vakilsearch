class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.belongs_to :lawyer, null: false
      t.belongs_to :service, null: false
      t.integer :cost, null: false, default: 0
      t.timestamps
    end
    add_index :charges, :lawyer_id
    add_index :charges, [:service_id, :lawyer_id], unique: true
  end
end
