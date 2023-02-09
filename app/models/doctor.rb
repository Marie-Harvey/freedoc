class Doctor < ApplicationRecord
    has_many :appointments
    has_many :specialtys, through: :doctor_specialtys
    has_many :doctor_specialtys
    has_many :patients, through: :appointments
    belongs_to :city 
end
