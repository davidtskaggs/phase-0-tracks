require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("match.db")
db.results_as_hash = true
db.execute("CREATE TABLE IF NOT EXISTS match(id INTEGER PRIMARY KEY, name TEXT, email TEXT, address_city TEXT, profession_industry TEXT)")

def create_people (db, name, email, address_city, profession_industry)
  db.execute("INSERT INTO match (name, email, address_city, profession_industry) VALUES (?, ?, ?, ?)", [name, email, address_city, profession_industry])
end

10.times do
  create_people(db, Faker::Name.name, Faker::Internet.email, Faker::Address.city, Faker::Job.field)
end

match = db.execute("SELECT * FROM match")
puts match.class
p match
