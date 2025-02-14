puts "hello world".class
puts 123.class
puts 123.123.class
puts 123.+ 100

## for(i = 0l i < 10; i++) This is what we are used to

# 10.times { puts "Chunky Bacon"}
# 10.times { |i| puts "Chunky Bacon"}


10.times do |i|
  puts i
  # this will convert to string
  # puts i.to_s + "Chunky Bacon"

  # this is string interpolation
  puts "#{i} Chunky Bacon #{i + 1}"
end

# Comments start with a #
=begin
this
a multiline
comment
=end

# class Test
# =begin
# test
# this is super duper ugly! Because the =begin needs to be all the way on the left
# =end
#   # test
#   # some other line
#   def some_method

#   end
# end


# snake_case
some_very_long_variable_name = 123_123_123
# Constants are like snake case but all capitals
MY_CONSTANT = 3.14
# This iwll give you a warning!
# MY_CONSTANT = 100

# Classes use PascalCase so for example MyClassName



# Arrays
empty_array = Array.new
another_empty_array = []


shopping_list = ["Bananas", "Orange", "Strawberries"]
shopping_list[3] = "Watermelon"
shopping_list << "Apples" << "Bread"
# puts shopping_list.size
# puts shopping_list

# Parenthesis are optional
# puts("test")
# puts "test"


# for(my_var in shopping_list) This is what we are used to
shopping_list.each { |item| puts "TODO Buy: #{item}"}

upper_case_shopping_list = shopping_list.map { |item| item.upcase}
# puts upper_case_shopping_list

mixed_types = ["string", 10, [1, 2, 3]]
# puts mixed_types




# Hashes (dicts, associative arrays)
# Using strings as keys, symbols are a bit more efficient
# my_zoo = {"Zebras" => 14, "Monkies" => 42, "Robins" => 100}
# my_zoo = {:zebras => 14, :Monkies => 42, :Robins => 100}
my_zoo = {zebras: 14, Monkies: 42, Robins: 100}
my_zoo[:zebras] += 10
my_zoo[:hippos] = 99

# puts "There are #{my_zoo[:zebras]} zebras in my zoo"


# puts my_zoo

# my_zoo.each { |animal_name, count| puts "There are #{count} #{animal_name} in my zoo!!" }



# ifs!!

# DO NOT USE THIS ABBREVIATION FOR A VARIABLE NAME

temperature = -42
clothing = ""

if temperature < 0
  clothing = "Snow Suit"
elsif temperature < 20
  clothing = "Sweatshirt"
else
  clothing = "Bathing Suit"
end


# puts "You should wear a #{clothing}"


puts "You should wear a #{clothing}" unless clothing == ""


temperature = "42"
# puts "You should wear a #{clothing}" if temperature.is_a? Integer


# Methods

def which_clothing(temp = 0)
  unless temp.is_a? Integer
    return "Not a valid temp!"
  end
# def which_clothing(temp)
  if temp < 0
    return "Snow Suit"
  elsif
    "Sweatshirt"
  else
    "Bathing Suit"
  end
end

puts which_clothing (-10)
puts which_clothing 15
puts which_clothing
puts which_clothing("string")