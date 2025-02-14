require_relative "student"

class CollegeStudent < Student
    attr_reader :student_number
    def initialize(name, gpa, password, student_number)
        super(name, gpa, password)
        @student_number = student_number
    end

    def to_s
        "#{super} and a student number of #{@student_number}"
    end

end