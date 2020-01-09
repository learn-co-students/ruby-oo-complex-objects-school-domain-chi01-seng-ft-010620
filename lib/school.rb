class School
    def initialize(name) 
        @name = name
        @roster = {}
    end

    def name
        @name
    end

    def roster
        @roster
    end

    def add_student(name, grade)
        if roster[grade] == nil
            roster[grade] = []
        end
        roster[grade].push(name)
    end

    def grade(grade)
        roster[grade].sort
    end

    def sort
        @roster.each do |key, value|
            @roster[key] = grade(key)
        end
    end

end