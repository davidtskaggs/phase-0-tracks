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

    puts "What would you like to do? (view, add, update, remove, search or exit)"
    user_input = gets.chomp.downcase

    if user_input == 'exit'
      break
    elsif user_input == 'view'
      puts "processing..."
      view_contact_list(x)
      break
    elsif user_input == 'add'
      add_contact(x)
      puts "processing..."
      break
    elsif user_input == 'update'
      puts "processing..."
      update_contact(x)
      break
    elsif user_input == 'remove'
      puts "processing..."
      remove(x)
      break
    elsif user_input == 'search'
      puts "processing..."
      print_individual_contact(x)
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

# REFACTOR
# def print_individual_contact(list)
#   puts "Please enter name to search:"
#   input_name = gets.chomp.downcase

#   print_list = list.execute("SELECT * FROM contacts")
#   print_list.each do |item|
#     if item.index(input_name) != -1
#       i = item.index(input_name)
#       puts "-------------------"
#       puts "Contact Information:"
#       puts "name: #{item[i]}"
#       # puts "name: #{item[i][1]}"
#       # puts "occupation: #{item[i][2]} - association: #{item[i][3]}"
#       # puts "email: #{item[i][4]} - phone:#{item[i][5]}"
#       puts "-------------------"
#     end
#   end
# end

# Refactor!!
def add_contact(list)

  puts "Please enter new contact name:"
  add_name = gets.chomp.downcase

  puts "Please enter new contact phone number:"
  add_phone = gets.chomp.downcase

  puts "please enter new contact email address:"
  add_email = gets.chomp.downcase

  puts "please enter new contact occupation:"
  add_occupation = gets.chomp.downcase

  puts "please enter how you know new contact:"
  add_group = gets.chomp.downcase

  list.execute("INSERT INTO contacts(name, occupation, association, phone_number, email) VALUES ('#{add_name}', '#{add_occupation}','#{add_group}', '#{add_email}', '#{add_phone}') ")
end


def update_contact(list)

  puts "Please enter contact name:"
  input_name = gets.chomp
  # PRINT CONTACT INFORMATION FOR 'INPUT_NAME'

  puts "Please enter the category for the updated item:"
  puts "- Options include: name, occupation, association, phone_number, email,  or exit -"
  category_update = gets.chomp.downcase

  puts "What is the updated #{category_update}:"
  updated_value = gets.chomp.downcase

  list.execute("UPDATE contacts SET '#{category_update}' = '#{updated_value}' WHERE name = '#{input_name}' ")

  # PRINT UPDATED CONTACT INFORMATION FOR 'INPUT_NAME'
end

def remove(list)
  puts "Please enter contact to remove"
  input = gets.chomp

  contact = list.execute("SELECT * FROM contacts")
  contact.each do |individual_contact|
    if individual_contact[1] == input
      list.execute("DELETE FROM contacts WHERE name = '#{input}' ")
    else
      puts "Sorry, you don't have that contact!"
    end
  end
end

user_decision(contacts)