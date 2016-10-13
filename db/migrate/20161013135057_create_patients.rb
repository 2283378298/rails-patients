class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.integer :location_id
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.integer :medical_record_num
      t.datetime :birth
      t.string :gender
      t.string :status
      t.integer :viewed_count

      t.timestamps null: false
    end
  end
end
