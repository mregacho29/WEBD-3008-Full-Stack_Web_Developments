require_relative "student"
require_relative "college_student"

wally = Student.new("Wally Glutton", 3.3, "sosecure")

# puts wally.inspect
# puts wally.to_s
# puts wally.name
# puts wally.class

# wally.name = "Wally the Second"
# puts wally.name
# puts wally.gpa

# wally.password = "newpassword"
# puts wally.inspect
# # puts wally.password

# puts wally.write_code

# puts Student.location


# generic_student = Student.generic_student
# puts generic_student.inspect

# # daisy = Student.new("Daisy May", password: "test")
daisy = Student.new("Daisy May")
puts daisy.inspect

# puts daisy.protected_method


ricky = CollegeStudent.new("Ricky Bobby", 0.5, "rickypassword", 123456)
puts ricky.class
puts ricky.inspect

puts daisy
puts ricky.to_s