class Puppy

  def initialize
    puts "Initializing new puppy instance ..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
    int.times do
      puts "woof"
    end
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(int)
    age = 7 * int
  end

  def shake_hands
    puts "*puppy shakes hands*"
  end
end

# puppy_new = Puppy.new
# puppy_new.fetch("ball")
# puppy_new.speak(5)
# puppy_new.roll_over
# p puppy_new.dog_years(5)
# puppy_new.shake_hands

class Boat

  def initialize(boat_type, color)
    @boat_type = boat_type
    @color = color
    puts "Initializing a new #{color} #{boat_type}"
  end

  def change_boat_type=(new_boat_type)
    @boat_type = new_boat_type
    puts "Your boat is now a #{@boat_type}"
  end

  def boat
    @boat_type
  end

  def board_boat(int)
    puts "#{int} people have boarded the boat"
  end

  def sail_around_lake(number)
    number.times do
    puts "You've sailed around the lake!"
    end
  end
end


# sailboat = Boat.new('power boat', 'blue')
# sailboat.change_boat_type = "sailboat"
# sailboat.boat
# sailboat.board_boat(5)
# sailboat.sail_around_lake(3)

sailboats = []

50.times do |num|
  sailboats << Boat.new("sailboat", "white")
end

sailboats.each do |boat|
  boat.board_boat(2)
  boat.sail_around_lake(1)
end