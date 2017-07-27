# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

"zom".insert(1, "o")
# => “zoom”

# "enhance".<???>
# => "    enhance    "

"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

"the usual".insert(-1, " suspects")
"the usual" << " suspects"
#=> "the usual suspects"

# " suspects".<???>
# => "the usual suspects"

# "The case of the disappearing last letter".<???>
# => "The case of the disappearing last lette"

# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"

# "Elementary,    my   dear        Watson!"
# => "Elementary, my dear Watson!"

"z".each_byte {|b| print b, ' ' }
"z".each_codepoint {|i| print i, ' ' }
# => 122
# (What is the significance of the number 122 in relation to the character z?)

"How many times does the letter 'a' appear in this string?".count "a"#
# => 4