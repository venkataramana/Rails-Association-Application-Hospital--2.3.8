class Patient < ActiveRecord::Base
        has_many :appointments
        has_many :doctors, :through => :appointments
        validates_presence_of :patient_name, :gender, :age, :appointment_date
        #validates_uniqueness_of :appointment_date
end

