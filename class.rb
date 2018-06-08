require 'sinatra'
require 'byebug'
require 'mailgun'
require "./muffins"
require "./cookies"
require "./cakes"
require "./bakery"
class Cart
    def initialize()
        @items = [];
        @order_number = order_counter # there is nothing called order_counter being passed into this initialize


    end
    def contents()
        return @items

    end
    
end



 
