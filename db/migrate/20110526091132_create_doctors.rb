class CreateDoctors < ActiveRecord::Migration
  def self.up
    create_table :doctors do |t|
      t.string :doctor_name
      t.integer :no_of_appointments
      t.integer :patient_id
      t.timestamps
    end
  end

  def self.down
    drop_table :doctors
  end
end

