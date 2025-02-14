# Name: Ma Crizza Lynne Regacho
# Date: 2025-01-19
# Description: U2 - Ultimate Object-Oriented Ruby Challenge

class Grains # Defines a new class named Grains
  def self.square(number) # Defines a class method named square with a required parameter. Self can be call on the class itself.
    2**(number - 1) # Returns the value of 2 raised to the power of the number minus 1.
  end

  def self.total # Defines a class method named total
    (1..64).sum { |square_number| square(square_number)} # Creates an array of numbers from 1 to 64 and returns the sum of the squares of each number
    # Uses the sum method to iterate over each square number in the range.
  end
end



# The square method calculates the number of grains on a specific square of a chessboard using the formula 2**(number - 1).
# The total method calculates the total number of grains on all 64 squares by summing the grains on each square using the square method.