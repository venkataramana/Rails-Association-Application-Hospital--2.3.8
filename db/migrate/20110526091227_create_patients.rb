class CreatePatients < ActiveRecord::Migration
  def self.up
    create_table :patients do |t|
      t.string :patient_name
      t.string :gender
      t.integer :age
      t.string :disease
       t.integer :doctor_id
      t.timestamps

    end
  end

  def self.down
    drop_table :patients
  end
end

