# code here!
require 'pry'

class School
    attr_accessor :roster
    

    def initialize (roster)
        @roster = Hash.new
    end

    def add_student(name,grade)
        # @name = name ---it's bad because we're modifying the values. dont do it.
        # @age= age -----same here.
        
        if @roster[grade]
         @roster[grade] << name
        
        else
            @roster[grade] = []
            @roster[grade] << name
        end
    end

    def grade(age)
        #binding.pry
        @roster[age]
    end

    def sort
        @roster.each do |grade, name|
            name.sort!
        end
    end

end

#hash["new_key"] = []