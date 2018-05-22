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
        # @price = @price.to_i*3
        @tier = "premium"
        self
    end
   
    # def half_dozen(num)
    
    #     @price = (@price.to_i)*5*num
    #     @quantity*=6*num
    #     self
    # end
    
    
   
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

# post("/muffins_poppy")do
# # byebug
#     p %%%%%%%%%%%%%%%
#     p params
#     p params[:DozenPoppy]
    
#     this_order = Muffin_order.new(params)
#     # 
#     unless params[:DozenPoppy].nil? then 
    
#          this_order.quantity = @quantity.to_i + (params[:DozenPoppy] * 12)
#     end
#     unless params[:HalfDozPoppy].nil? then 
#         this_order.params([:HalfDozPoppy]) = @quantity.to_i + (params[:HalfDozPpoppy] * 6)
#     end
#     my_cart.push(this_order)
#     redirect "muffins"

    
