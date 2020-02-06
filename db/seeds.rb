# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
City.destroy_all
Speciality.destroy_all
DoctorSpeciality.destroy_all

City.create(city: "Sydney")
City.create(city: "Adelaide")

Doctor.create(first_name: "Charles", last_name: "Teo", zipcode: "2052", city_id: City.first.id)

Patient.create(first_name: "Cameron", last_name: "Wearing", city_id: City.last.id)

Speciality.create(speciality: "Neurosurgery")

neuro = DoctorSpeciality.create(doctor_id: Doctor.first.id, speciality_id: Speciality.first.id)

a = Appointment.create(date: Time.now, doctor_id: Doctor.first.id, patient_id: Patient.first.id, city_id: City.first.id)

puts "An appointment has been fixed for #{a.patient.first_name} #{a.patient.last_name} with Dr. #{a.doctor.first_name} #{a.doctor.last_name} in the city of #{a.city.city}"