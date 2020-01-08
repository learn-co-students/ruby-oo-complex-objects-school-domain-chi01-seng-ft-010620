# code here!
class School 

    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        roster[grade] ||= []
        roster[grade] << student_name
    end

    def grade(grade)
        roster.map do |a, b|
            if a == grade
                return b 
            end
        end
    end

    def sort
        new_hash = {}
        roster.each do |a, b|
        new_hash[a] = b.sort
        end
        new_hash
    end
end