require 'pry'

class School

    def initialize(school)
        @school = school
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(name, grade)
        if @roster.keys.include?(grade) == false
            @roster[grade] = [name]
        else
            @roster[grade].push name
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted_roster = @roster.sort.to_h
        sorted_roster.each do |grade, students|
            students.sort!
        end
    end

end