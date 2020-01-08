require "pry"

class School
    attr_accessor :school, :roster
    
    def initialize(school)
        @school = school
        @roster = {}
    end 

    def add_student(name, grade)  
        if @roster[grade]
            @roster[grade] << name
        else
            @roster[grade] = []
            @roster[grade] << name
        end 
    end 

    def grade(grade)
        @roster[grade]
    end 

    def sort
        @roster.sort
    end 
end 

# bayside = School.new("Bayside")

# bayside.add_student("dave", 10)
# bayside.add_student("Ed", 2)

# puts bayside.sort1