# I want a method that will convert integers into their Roman numeral representation.
# For example:
# 3.to_roman => "III"
# 15.to_roman => "XV"

class Fixnum

  def to_roman
    "I" * self
  end
end

puts 1.to_roman #=> "I"
puts 2.to_roman #=> "II"
puts 4.to_roman #=> "IIII" (should be "IV")