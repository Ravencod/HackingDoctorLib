require 'faker'

1.times do
    city = City.create!(name: Faker::Address.city)
end

10.times do
    doctor = Doctor.create!(first_name: Faker::Name.first_name ,last_name: Faker::Name.last_name , postal_code: Faker::Address.postcode , city_id: 1, specialty_id: Faker::Number.between(1, 10))
end

10.times do
    patient = Patient.create!(first_name: Faker::Name.first_name ,last_name: Faker::Name.last_name , city_id: 1 )
end

10.times do
specialty = Specialty.create!(name: Faker::Hipster.word, doctor_id: Faker::Number.between(1, 10) )
    appoitment = Appoitment.create!(doctor_id: Faker::Number.between(1, 10) ,patient_id: Faker::Number.between(1, 10) ,appointment_date: Faker::Date.between(2.days.ago, Date.today), city_id: 1)
end
