# Name: Ma Crizza Lynne Regacho
# Date: 2025-01-18
# Description: U2 - Ultimate Object-Oriented Ruby Challenge


class HelloWorld # Define a new class named HelloWorld
  def self.hello(name = nil) # Define a class method named hello with an optional parameter
    if name #Checks if name parameter is provided e.g nil or false
      "Hello, #{name}!" #Returns a string with the name parameter
    else #if name parameter is not provided
      "Hello, World!"
    end
  end
end