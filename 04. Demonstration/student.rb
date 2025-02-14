# class Student < Object
class Student
    LOCATION = "RRC Polytech"
    attr_accessor :name # This will create a getter and setter for a name
    attr_reader :gpa # This will create only a getter
    attr_writer :password # This will create only a setter
    def initialize(name, gpa = 0, password = "DefaultPassword")
        # puts "#{name} with gpa of #{gpa} and password of #{password} has been created"
        @name = name
        @gpa = gpa
        @password = password
    end



    def self.generic_student
        Student.new("Generic Student", 0, "password")
    end



    # Ruby does not support method overloading
    # def initialize(name, gpa)
    #     initialize(name, gpa, "password")
    # end

    def write_code
        "#{@name} is writing super duper good code"
    end


    def self.location
        LOCATION
    end

    # def name
    #     @name
    # end

    # def name=(name)
    #     @name = name
    # end

    def to_s
        "#{@name} has a gpa of #{@gpa} and a password of #{"*" * @password.size}"
    end

    protected

    def protected_method
        puts "I am protected"
    end

    private

    def private_method
        puts "This is a private method"
    end



end

wally = Student.new("Wally Glutton", 3.3, "sosecure")

# puts wally.inspect
# puts wally.to_s
# puts wally.name
# puts wally.class

# wally.name = "Wally the Second"
# puts wally.name
# puts wally.gpa

# wally.password = "newpassword"
puts wally.inspect
# puts wally.password

puts wally.write_code

puts Student.location


generic_student = Student.generic_student
puts generic_student.inspect

# daisy = Student.new("Daisy May", password: "test")
daisy = Student.new("Daisy May")
puts daisy.inspect

# puts daisy.protected_method