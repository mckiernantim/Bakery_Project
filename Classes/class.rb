class Cart
    def initialize(data)
        @items = [];
        @order_number = order_counter


    end
    def contents()
        return @items

    end
    def add()
        items = gets.strip()
        @items.push(items)


end



 
