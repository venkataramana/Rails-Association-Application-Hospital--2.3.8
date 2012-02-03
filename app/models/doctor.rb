class Doctor < ActiveRecord::Base
        has_many :appointments
        has_many :patients, :through => :appointments
        validates_presence_of :doctor_name
        validates_uniqueness_of :doctor_name
end

