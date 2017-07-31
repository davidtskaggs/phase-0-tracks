# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + ":("
#   end

#   def self.yell_happily(words)
#     words.swapcase + "!!!"
#   end
# end
# Shout.yell_happily("Howdy!")
# Shout.yell_angrily("Get off my lawn")

module Shout
  def shouting(phrase)
    puts "#{phrase.upcase}!!!!"
  end
end

class IsleyBrothers
  include Shout
end

class PopStar
  include Shout
end

new_song = IsleyBrothers.new
new_song.shouting("Come on and shout now!")
new_song.shouting("Hey hey hey hey")
new_song.shouting("A little bit softer now...")
new_song.shouting("A little bit louder now... ")

justin_timberlake = PopStar.new
justin_timberlake.shouting("hey everybody :)")
justin_timberlake.shouting("lets make some noise ...")