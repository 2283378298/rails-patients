class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :patient_id
      t.string :code
      t.string :name

      t.timestamps null: false
    end
  end
end
