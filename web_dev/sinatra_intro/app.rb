# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  p students
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# write a '/contact' route that displays
# an address

get '/contact/' do
  "Shoot us some mail: #{params[:street_number]} #{params[:street_name]}, #{params[:city]}, #{params[:state]}, #{params[:country]}."
end

# write '/great_job' route that takes a
# name as a query parameter and says "Good Job, [name]!"
# if the query parament is absent, say "Good job!"

get '/great_job' do
  name = params[:name]
  if name
  "Good job, #{params[:name]}!"
  else
    "Good job!"
  end
end

# write route to calculate two numbers
get '/:number_1/:operator/:number_2' do
  number_1 = params[:number_1]
  number_2 = params[:number_2]
  operator = params[:operator]

  if operator == 'plus'
    total = number_1.to_i + number_2.to_i
  elsif operator == 'minus'
    total = number_1.to_i - number_2.to_i
  elsif operator == 'times'
    total = number_1.to_i * number_2.to_i
  elsif operator == 'divided_by'
    total = number_1.to_i / number_2.to_i
  else
    "Invalid operator. Please use: 'plus (+)', 'minus (-)', 'times (*)', 'divided_by (/)'"
  end
  "Calculate: #{number_1} #{operator} #{number_2} = #{total}"
end