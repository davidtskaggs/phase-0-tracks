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
# contacts.execute("INSERT INTO contacts(name, occupation, association, phone_number, email) VALUES ('tatiana donald', 'fashionista', 'family', '203.273.4706', 'a.t.k.donald@gmail.com') ")

contact_list = contacts.execute("SELECT * FROM contacts")
# puts contact_list.class
# p contact_list

puts "Welcome to your contact list"

def user_decision(x)
  loop do

    puts "What would you like to do? (view, add, update, remove, or exit)"
    user_input = gets.chomp.downcase
    break if user_input == 'exit'

    if user_input == 'view'
      puts "processing..."
      view_contact_list(x)
      break
    elsif user_input == 'add'
      break
    elsif user_input == 'update'
      break
    elsif user_input == 'remove'
      break
    else
      puts "Invalid response. Please try again."
    end
  end
end

def view_contact_list(list)
  list = list.execute("SELECT * FROM contacts")
  list.each do |item|
    puts "name: #{item[1]}"
    puts "occupation: #{item[2]} - association: #{item[3]}"
    puts "email: #{item[4]} - phone:#{item[5]}"
    puts "-------------------"
  end
end

user_decision(contacts)


