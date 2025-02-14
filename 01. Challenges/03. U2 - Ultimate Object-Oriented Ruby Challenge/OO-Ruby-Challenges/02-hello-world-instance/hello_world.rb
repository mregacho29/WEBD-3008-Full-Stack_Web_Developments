# Name: Ma Crizza Lynne Regacho
# Date: 2025-01-19
# Description: U2 - Ultimate Object-Oriented Ruby Challenge


class HelloWorld # Define a new class named HelloWorld
  def initialize(name) # Define an instance method named initialize with a required parameter
    @my_name = name # Assign the parameter to an instance variable
  end

  def hello(name = 'World') # Define an instance method named hello with an optional parameter
    "Hello, #{name}. My name is #{@my_name}!" # Returns a string with the name parameter and the instance variable
  end
end
