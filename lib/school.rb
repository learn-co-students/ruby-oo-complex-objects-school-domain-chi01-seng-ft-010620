class School

    attr_accessor :name, :roster



    def initialize(name = "Elementary School")
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        p student_name
        p grade
        if @roster[grade]
        else
            @roster[grade] = []
        end
        @roster[grade].sort
        @roster[grade] << student_name
        
    end

    def grade(grade_number)
        students = @roster[grade_number]
        puts students
        students
    end

    def sort 
        # sort the roster 
        # map through the keys in the hash to return the keys in numerical order
        
        sorted = {}
        @roster.each do |grade, students|
          sorted[grade] = students.sort
        end
        sorted
    end

end

# roster = {
#     1: ["bobby", "cassie"],
#      2: ["john", "dan"]
# }