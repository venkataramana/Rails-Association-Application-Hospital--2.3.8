class AddColToPatients < ActiveRecord::Migration
  def self.up
          add_column :patients, :appointment_date, :date
  end

  def self.down
          remove_column :patients, :appointment_date
  end
end

