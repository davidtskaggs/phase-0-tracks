# Virus Predictor

# I worked on this challenge [with: Thierry Moudiki ].
# We spent [1] hour on this challenge.

# EXPLANATION OF require_relative
# Require_relative differs from require  in that require needs a full path to the file it references, so that it can access any file locally; Whereas, require_relative only looks for a file in the respective current local directory.

require_relative 'state_data'

class VirusPredictor
  # Initialize takes data from hash and assigns to instance variables to default values
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Calls the below private methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # Taking population and population density and predicting number of deaths
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      x = 0.4
    elsif @population_density >= 150
      x = 0.3
    elsif @population_density >= 100
      x = 0.2
    elsif @population_density >= 50
      x = 0.1
    else
      x = 0.05
    end

    number_of_deaths = (@population * x).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end

  # Predicting speed of spread with population density from hash
  def speed_of_spread
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"
  end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, pop|
  state_name = VirusPredictor.new(state, pop[:population_density], pop[:population])
  state_name.virus_effects
end

# * OLD DRIVER CODE (replaced by #each block) *

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects
#=======================================================================
# Reflection Section

=begin
1. What are the differences between the two different hash syntaxes shown in the state_data file?
  - STATE_DATA is a hash that is using it's keys as strings and it's      values as additional hashes. Inside the value hashes, the keys are listed as symbols and the values are integers. From my understanding, symbols can sometimes be more efficient because they use less memory and thus make the program more efficient.

2. What does require_relative do? How is it different from require?
  - require_relative tells a file to look for another file within the same directory to load data; Whereas, require is able to look beyond a directory to load information from a local file.

3. What are some ways to iterate through a hash?
  - Iterating through hashes can be done through a number of different blocks. My favorite ways to iterate through a hash is to use #each or #map.

4. When refactoring virus_effects, what stood out to you about the variables, if anything?
  - When refactoring virus_effects, the redundant use of instance variables being passed as arguments to predicted_deaths and speed_of_spread stood out to me the most; Removing the arguments being passed and the parameter requirements from redicted_deaths and speed_of_spread proved that they were not needed for the program to run. Removing them probably helped increase efficiency of the run-time of the program.

5. What concept did you most solidify in this challenge?
  - The concept that was most solidified during this challenge was how to approach and execute iteration of a nested hash. Furthermore, I gained a better understanding of how to iterate through a hash that has mixed keys of string and symbols.
=end