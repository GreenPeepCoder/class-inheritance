class Employee

    attr_reader :name, :title, :salary 

    def initialize(name, title, salary, boss)
        @name, @title, @salary = name, title, salary, boss
    end

    def boss
        @boss
    end

    def bonus(multiplier)
        return @salary * multiplier
    end

    def inspect
        @name.inspect
    end
end