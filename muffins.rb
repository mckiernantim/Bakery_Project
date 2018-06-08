# don't require the files/gems unless they are needed
require 'sinatra'
require 'byebug'
require 'mailgun'
require "./class"
require "./cookies"
require "./cakes"

counter = 1

class Muffin_order
    attr_reader :kind, :price, :size, :quantity, :tier, :id
    def initialize(data)
       
        @size = ""
        @quantity = 0
        @kind = "none"
        @price = 1
        self
    end
     def premium()
       
        @tier = "premium"
        self
    end
   

    
   
    def choch()
        @kind = "chocolate"
        @tier = "standard"
        self
        
    end
    def poppy()
        @kind = "poppy_seed"
        @tier = "standard" 
        self
        
    end
    def bananna()
        @kind = "bananna"
        @tier = "standard"
        self
        
    end
end


    
