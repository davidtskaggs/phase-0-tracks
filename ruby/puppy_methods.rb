class Puppy

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

puppy_new = Puppy.new
puppy_new.fetch("ball")
puppy_new.speak(5)
puppy_new.roll_over
p puppy_new.dog_years(5)
puppy_new.shake_hands