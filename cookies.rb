require 'sinatra'
require 'byebug'
require 'mailgun'
require "./class"
require "./muffins"
require "./cakes"
class Cookie_order
    attr_reader :kind, :price, :total, :quantity, :tier
    def initialize()
        @price = 0.to_i
        @total = "i"
        @quantity = 1.to_i
        @kind = "none"
        self
    end
     def premium()
        @price = @price.to_i*3
        @tier = "premium"
        self
    end
   
    def dozen()
        @price = @price.to_i*9
        @quantity = @quantity.to_i*12
        self
    end
    def half_dozen()
        @price = @price*5
        @quantity*=6
        self
    end
    def choch()
        @kind = "chocolate_chip"
        @tier = "standard"
        @price = @price.to_i+1
        self
    end
    def sugar()
        @kind = "sugar"
        @tier = "standard" 
        @price = @price.to_i+1
        self
    end
    def oatmeal()
        @kind = "oatmeal"
        @tier = "standard"
        @price = @price.to_i+1
        self
    end
end

    




