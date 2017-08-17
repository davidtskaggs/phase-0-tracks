require 'sqlite3'
require 'faker'

contacts = SQLite3::Database.new("dskaggs_contacts.db")
# db.results_as_hash = true

create_contacts_table = <<-SQL
  CREATE TABLE IF NOT EXISTS contacts (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    occupation VARCHAR(255),
    association VARCHAR(255),
    phone_number VARCHAR(255),
    email VARCHAR(255)

  )
SQL

contacts.execute(create_contacts_table)
contacts.execute("INSERT INTO contacts(name, occupation, association, phone_number, email) VALUES ('tatiana donald', 'fashionista', 'family', '203.273.4706', 'a.t.k.donald@gmail.com') ")
# def create_people (db, name, email, address_city, profession_industry)
#   db.execute("INSERT INTO match (name, email, address_city, profession_industry) VALUES (?, ?, ?, ?)", [name, email, address_city, profession_industry])
# end
