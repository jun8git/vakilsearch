class CreateLawyers < ActiveRecord::Migration
  def change
    create_table :lawyers do |t|

      t.timestamps
    end
  end
end
