class AppleTree

    attr_accessor :age
    def initialize age
        @age = age 
        @height = 7
        @apple_count = 0
        puts "Here's a tree"
        self 
    end 

    def year_gone_by 
        @age += 1
        puts "Age is now #{@age}"
        @height += (@height * 0.1)
        puts "Height is now #{@height}"
        if @age <= 3 
            @apple_count = 0
            puts "Apple count: #{@apple_count}"
        elsif  (3...10).include?(@age)
            @apple_count  += 2
            puts "New apple count: #{@apple_count}"
        else age >=10 
            @apple_count 
            puts "Apple count: #{@apple_count}"
        end
        @age 
    end

    def pick_apples
        @apple_count =0 
        puts "Apple count: #{@apple_count}"
        # self
        @apple_count
    end 
end

# apple1 = AppleTree.new(7).year_gone_by.year_gone_by.year_gone_by
# apple2 = AppleTree.new(20).year_gone_by.year_gone_by

