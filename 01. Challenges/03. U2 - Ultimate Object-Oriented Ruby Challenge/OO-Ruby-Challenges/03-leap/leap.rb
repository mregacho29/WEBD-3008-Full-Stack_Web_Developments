# Name: Ma Crizza Lynne Regacho
# Date: 2025-01-19
# Description: U2 - Ultimate Object-Oriented Ruby Challenge

class Year # Defines a new class named Year
  def self.leap?(year) # Defines a class method named leap? with a required parameter. Self can be call on the class itself.
    if year % 400 == 0 # Checks if the year is evenly divisible by 400
      return true # Returns true if the year is evenly divisible by 400
    elsif year % 100 == 0 # Checks if the year is evenly divisible by 100
      return false # Returns false if the year is evenly divisible by 100
    elsif year % 4 == 0 # Checks if the year is evenly divisible by 4
      return true # Returns true if the year is evenly divisible by 4
    else # If the year is not evenly divisible by 400, 100, or 4
      return false
    end
  end
end