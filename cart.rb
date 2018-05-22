class Cart
    def initialize
        @current_id = 1
        @items =[]
    end
    def get_item(id)
        @items.each do |item|
            if item[:id] == id do
                return item
            end
        end
    end

    def add_cookie(data)
        this_cookie = Cookie_order.new(data)
        this_cookie[:id] = @current_id
        current_id+=1 
        @items.push(this_cookie)
    end

    def all_cart 
        return @items
    end
 end