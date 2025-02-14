# Name: Ma Crizza Lynne Regacho
# Date: 2025-01-17
# Description: U1 - Ultimate Intro to Ruby Challenge



# Using a single puts statement build the following
# sentence using only data from the carl hash and the
# sagan array along with some string interpolation.
#
# We are a way for the cosmos to know itself.

carl  = {
          :toast => 'cosmos',
          :punctuation => [ ',', '.', '?' ],
          :words => [ 'know', 'for', 'we']
        }

sagan = [
          { :are => 'are', 'A' => 'a' },
          { 'waaaaaay' => 'way', :th3 => 'the' },
          'itself',
          { 2 => ['to']}
        ]

# Here is an example of building a setence out of array/hash pieces.
example = [ 'test', 'a', 'is']
time    = { :that => 'This', :period => '.'}
puts "#{time[:that]} #{example[2]} #{example[1]} #{example[0]}#{time[:period]}"


# Building the sentence using string interpolation
puts "#{carl[:words][2]} #{sagan[0][:are]} #{sagan[0]['A']} #{sagan[1]['waaaaaay']} #{carl[:words][1]} #{sagan[1][:th3]} #{carl[:toast]} #{sagan[3][2][0]} #{carl[:words][0]} #{sagan[2]}"


# 2) Create an array of hashes named ‘ghosts’ to hold the following information:
# Inky is 4 years old, loves reindeers and has 25 dollars in the bank.
# Pinky is 5 years old, loves garden tools and has 14 dollars in the bank.
# Blinky is 7 years old, loves ninjas and has 18.03 dollars in the bank.
# Clyde is 6 years old, loves yarn and has 0 dollars in the bank.
# The following snippet of code should be able to process your ghosts array and generate the above italicized text.


ghosts = [
  { name: 'Inky', age: 4, loves: 'reindeers', net_worth: 25 },
  { name: 'Pinky', age: 5, loves: 'garden tools', net_worth: 14 },
  { name: 'Blinky', age: 7, loves: 'ninjas', net_worth: 18.03 },
  { name: 'Clyde', age: 6, loves: 'yarn', net_worth: 0 }
]



ghosts.each do |ghost|
    ghost_info  = "#{ghost[:name]} is #{ghost[:age]} years old, "
    ghost_info += "loves #{ghost[:loves]} and "
    ghost_info += "has #{ghost[:net_worth]} dollars in the bank."
    puts ghost_info
end



# 3) Write a script that uses the JSON provided by the dog.ceo API to print out a nicely formatted list of
# dog breeds and sub-breeds.
# Some starter code:


require 'net/http'
require 'json'
require 'pp'

url = 'https://dog.ceo/api/breeds/list/all'
uri = URI(url)
response = Net::HTTP.get(uri)
dog_breeds = JSON.parse(response) # Convert JSON data into Ruby data.

# LAST LINE WOULD BE REPLACED
# pp dog_breeds # pp stands for pretty print.

# Replace the pretty print with a nested loop to print the breeds and sub-breeds
dog_breeds['message'].each do |breed, sub_breeds| # contains the hash of breeds and their sub-breeds and "each do"" iterates over each breed and its associated sub-breeds.
  puts "* #{breed.capitalize}"
  sub_breeds.each do |sub_breed| #iterates over each sub-breed.
    puts "  * #{sub_breed.capitalize}"
  end
end


# 4) Using data from the city's open data set figure out how many of our trees may die now that the
# Emerald Ash Borer has been found here. In other words, how many Ash trees do we have in the city?
# A subset of tree dataset can be found here: https://data.winnipeg.ca/resource/d3jk-hb6j.json
# The full tree dataset can be found here: https://data.winnipeg.ca/resource/d3jk-hb6j.json?$limit=306000
# Using code similar to what was provided in question three, load up the tree JSON data and use JSON.parse
# to convert it to Ruby data. Investigate the data using the pretty print command and then write a
# program to automatically count all the Ash trees in the dataset. Remember that there are different types of ash trees.
# To speed up your investigation start using the first URL (the subset of tree data) and then when
# you get things working try switching to the full tree dataset.


require 'net/http'
require 'json'
require 'pp'


# # URL for the subset of tree data
# url = 'https://data.winnipeg.ca/resource/d3jk-hb6j.json'

# URL for the fullset of tree data
url = 'https://data.winnipeg.ca/resource/d3jk-hb6j.json?$limit=306000'
uri = URI(url)
response = Net::HTTP.get(uri)
trees = JSON.parse(response) # Convert JSON data into Ruby data.

# Uncomment the following line to inspect data
# pp trees


# Count the number of Ash trees
ash_tree_count = trees.count { |tree| tree['common_name'] && tree['common_name'].include?('ash') }
puts "Number of Ash trees: #{ash_tree_count}"