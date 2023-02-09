class DoctorSpecialty < ApplicationRecord
    # has_and_belongs_to_many :doctors
    belongs_to :doctors
    belongs_to :specialty
end
