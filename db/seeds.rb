# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"

Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
City.destroy_all

Specialties = ["Cardiologue", "Pédiatre", "Gynécologue", "Orthopédiste", "Ophtalmologiste" , "Psychiatre" , " Généraliste" , "Pneumologue" , "Gastro-entérologue" ]

5.times do |index|

 d = Doctor.create
 d.first_name = Faker::Name.first_name
 d.last_name = Faker::Name.last_name
#  d.specialty = Specialties.sample
 d.zip_code = Faker::Address.zip_code
 d.save

end


5.times do |index|

  p = Patient.create
  p.first_name = Faker::Name.first_name
  p.last_name = Faker::Name.last_name
  p.save
 
 end

 5.times do |index|

  a = Appointment.new
  a.date = Faker::Date.between(from: Date.today, to: Date.today + 365)
  a.doctor = Doctor.all.sample
  a.patient = Patient.all.sample
  a.save
 
 end

 5.times do |index|

  c = City.create 
  c.name = Faker::Address.city
  c.save
 
 end
 






 