# Create database from inside ruby program
require 'sqlite3'
database_connection = SQLite3::Database.new('pets.db')

database_connection.execute("CREATE TABLE IF NOT EXISTS cats(id INTEGER PRIMARY KEY, name TEXT, breed TEXT, AGE, INTEGER)")

# database_connection.execute("INSERT INTO cats (name, breed, age) VALUES ('Maru', 'Scottish Fold', 3)")

class Cat
  attr_accessor :name, :breed, :age

  @@all = []

  def initialize(name, breed, age)
    @name = name
    @breed = breed
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end
end
cat1 = Cat.new("Jeff", "nobreed", 5)
Cat.all.each do |cat|
  database_connection.execute("INSERT INTO cats (name, breed, age) VALUES (#{cat.name}, #{cat.breed}, #{cat.age}")
end

p database_connection.execute("SELECT * FROM cats")