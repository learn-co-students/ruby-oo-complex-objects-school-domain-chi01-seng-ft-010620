# code here!
require 'pry'
class School
    def initialize(school)
        @roster = {}
        @school = school 
    end 
    def school 
        @school = school 
    end 
    def roster 
        @roster 
    end 
def add_student(student_name, grade)
 if @roster.keys.include?(grade) == false 
    @roster[grade] = [student_name]
 else @roster[grade] << student_name 
 end 
end  
def grade(s_grade)
    @roster[s_grade]
end 
def sort
@roster.each do |grade, students| 
   sorted_arr = students.sort
   @roster[grade] = sorted_arr
#    binding.pry
end 
end 
end