require_relative "employee"

class Manager < Employee

    attr_reader :subordinates
    def initialize(name, title, salary, boss)
        super(name, title, salary, boss)
        @subordinates = Array.new()
    end

    def initialize(name, title, salary, boss, subordinates)
        super(name, title, salary, boss)
        @subordinates = subordinates
    end


    def add_subordinates(*subordinates)
        subordinates.each {|sub| @subordinates << sub}
    end

    def get_sub_sals
       total = 0
       self.subordinates.each do |sub|
        if sub.is_a?(Manager)
            total += sub.salary + sub.get_sub_sals
        else
            total += sub.salary
        end
       end
       total
    end
end
