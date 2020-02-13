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
end
