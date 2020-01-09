# code here!
class School

    attr_accessor :roster, :name, :grade
    def initialize (name)
         @name=name
        @roster=Hash.new
       
    end

    #We can't push an item into an array that is the value of a key that doesn't exist yet!
    # So, we first need to create the new key and point it to an empty array. 
    #Then we can push the new value into that array.
    
    def add_student(name, grade)
        if @roster[grade] == nil
            @roster[grade] = []
        end
        @roster[grade].push(name)
    end

    def grade (grade)
       p @roster[grade]

    end

    def sort
        sorted_roster = @roster.sort.to_h
        sorted_roster.each do |grade, students|
            students.sort!
        end

end
end
