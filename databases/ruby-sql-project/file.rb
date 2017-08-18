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

# Refactor!!
# def add_contact(list)
#   contact_array = []
#   puts "Please enter new contact name:"
#   add_name = gets.chomp.downcase
#   # contact_array << add_name
#   puts "Please enter new contact phone number:"
#   add_phone = gets.chomp.downcase
#   # contact_array << add_phone
#   puts "please enter new contact email address:"
#   add_email = gets.chomp.downcase
#   # contact_array << add_email
#   puts "please enter new contact occupation:"
#   add_occupation = gets.chomp.downcase
#   # contact_array << add_occupation
#   puts "please enter how you know new contact:"
#   add_group = gets.chomp.downcase
#   # contact_array << add_group
#   # list.execute(create_contacts_table)
#   # list = list.execute("SELECT * FROM contacts")
#   list.execute("INSERT INTO contacts(name, occupation, association, phone_number, email) VALUES (add_name, add_occupation, add_group, add_email, add_phone) ")
# end

# Refactor!!!
# def update_contact(list)

#   puts "Please enter contact name:"
#   input_name = gets.chomp

#   list = list.execute("SELECT * FROM contacts")
#   print_list = list.each do |item|
#     if item.index(input_name)
#       puts "-------------------"
#       puts "Contact Information:"
#       puts "name: #{item[1]}"
#       puts "occupation: #{item[2]} - association: #{item[3]}"
#       puts "email: #{item[4]} - phone:#{item[5]}"
#       puts "-------------------"
#     end
#   end

#   loop do
#     puts "Please enter the category for the updated item:"
#     puts "- Options include: name, number, email, occupation, group, or exit -"
#     category_update = gets.chomp.downcase
#     puts "What is the updated #{category_update}:"
#     updated_value = gets.chomp.downcase

#     if category_update == 'exit'
#       break
#     elsif category_update == 'name'
#         list[1] = updated_value
#         break
#     elsif category_update == 'number'
#         list[5] = updated_value
#         break
#     elsif category_update == 'email'
#         list[4] = updated_value
#         break
#     elsif  category_update == 'occupation'
#         list[2] = updated_value
#         break
#     elsif category_update == 'group'
#         # list[3] = updated_value
#         list[3].replace(updated_value.split)
#         break
#     else
#         puts "Invalid input: try again!"
#       end
#   end
#   puts "#{print_list}"
# end

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