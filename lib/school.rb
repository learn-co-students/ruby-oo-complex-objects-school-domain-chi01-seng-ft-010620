class School

    attr_reader :roster, :grade
 

    def initialize (school_name)
        @school_name = school_name
        # roster = []
        @roster = {}
    end

    def add_student (student_name, grade) 
        if @roster[grade] == nil
            @roster[grade] = []
        end
        @roster[grade].push(student_name)       
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.map do |grade, students|
          @roster[grade] = students.sort
        end
        @roster
    end


end

p school = School.new("Bayside High School")

p school.roster