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
        @order_number = order_counter


    end
    def contents()
        return @items

    end
    
end



 
