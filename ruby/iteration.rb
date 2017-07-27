colors = ["blue", "red", "green", "yellow"]

colors.each do |color|
  puts color.capitalize
end


new_arr = []
colors.map do |color|
  new_arr << color.swapcase
end
# p new_arr

colors.map! do |color|
  color.reverse
end
# p colors

car = {ford: "taurus",
vw: "cc",
porsche: "cayenne",
chevy: "silverado"
}

car.each do |make, model|
  puts "My #{make} #{model} is the best car!!"
end


