require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("match.db")
# db.results_as_hash = true
db.execute("CREATE TABLE IF NOT EXISTS match(id INTEGER PRIMARY KEY, name TEXT, email TEXT, address_city TEXT, profession_industry TEXT)")

def create_people (db, name, email, address_city, profession_industry)
  db.execute("INSERT INTO match (name, email, address_city, profession_industry) VALUES (?, ?, ?, ?)", [name, email, address_city, profession_industry])
end

# 10.times do
#   create_people(db, Faker::Name.name, Faker::Internet.email, Faker::Address.city, Faker::Job.field)
# end

match = db.execute("SELECT * FROM match")
# p match

puts "Welcome to the Work - Finder List"
# puts "Here are out current industries served: "
# match.each do |value|
#   puts "#{value[4]}"
# end
puts "Please enter industry:"
user_input = gets.chomp.capitalize!

match.each do |i|
  industry = i[4]
  if industry == user_input
    puts "Id: #{i[0]}. Name: #{i[1]}"
    puts "Location: #{i[3]}"
    puts "Profession: #{i[4]}"
    puts "------------------------"
  end
end
