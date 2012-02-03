class AddingCols < ActiveRecord::Migration
  def self.up
          add_column :patients, :doctor_name, :string
          add_column :doctors, :appointment_id, :integer
  end

  def self.down
           remove_column :patients, :doctor_name
           remove_column :doctors, :appointment_id
  end
end

