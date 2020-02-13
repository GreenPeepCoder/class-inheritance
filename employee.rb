class Employee

    attr_reader :name, :title, :salary 

    def initialize(name, title, salary, boss)
        @name, @title, @salary, @boss = name, title, salary, boss
    end

    def boss
        @boss
    end
end