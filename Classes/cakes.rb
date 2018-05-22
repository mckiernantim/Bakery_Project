
class Cake_order
    attr_reader :kind, :price, :size, :quantity, :tier
    def initialize()
        @price = 10.to_i
        @size = ""
        @quantity = 1.to_i
        @kind = "none"
    end
     def premium()
        @price = @price.to_i*3
        @tier = "premium"
    end
   
    def large()
        @price = @price.to_i*3
        @size = "large"
    end
    def medium()
        @price = @price.to_1*2
        @size = "medium"
    end
    def small()
        @size = "small"
    end
    def choch()
        @kind = "chocolate"
        @tier = "standard"
        
    end
    def carrot()
        @kind = "carrot_cake"
        @tier = "standard" 
        
    end
    def red_velvet()
        @kind = "red_velvet"
        @tier = "standard"
        
    end
end