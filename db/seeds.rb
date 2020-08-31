# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



def code_gen
  alpha = ["ABCDEFGHIJKLMNOPQRSTUVWXYZ"].split('')
  result = []
  3.times { result << alpha.sample}
  result.join('')
end

def rand_time
  a = DateTime.now.to_i
  b = a + 500
  Time.at(rand(a..b))
end

10.times do 
  Airport.create(code: code_gen)
end

10.times do
  Flight.create(departure_airport_id: Airport.all.sample.id,
  arrival_airport_id: Airport.all.sample.id,
  time: rand_time,
  duration: rand(1..14))
end

