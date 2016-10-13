class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.integer :record_num
      t.datetime :birth
      t.string :gender
      t.string :status
      t.string :location
      t.integer :viewed_count

      t.timestamps null: false
    end
  end
end
