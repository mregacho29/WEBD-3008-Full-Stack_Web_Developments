# Name: Ma Crizza Lynne Regacho
# Date: 2025-01-19
# Description: U2 - Ultimate Object-Oriented Ruby Challenge

class Pangram # Defines a new class named Pangram
  def self.is_pangram?(sentence) # Defines a class method named pangram? with a required parameter. Self can be call on the class itself.
  # End method names with a ? if the method returns a boolean value

    alphabets = ('a'..'z').to_a # Creates an array of alphabet from a to z

    characters = sentence.downcase.chars # Converts the sentence to lowercase and creates an array of characters

    alphabets.all? { |letter| characters.include?(letter) } # Checks if all the letters are included in the characters array
  end
end