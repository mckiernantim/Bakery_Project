class Todo
	attr_reader :name, :description, :id

	def initialize(data)
		@name = data[:name]
        @description = data[:description]
        @id = data[:id]
	end
	
end

class TodoManager
	def initialize
		@current_id = 1
		@todos = []
	end

   
    def find(id)
        @todos.each do |todo|
            if todo[:id] == id do
                return todo
            end
        end
    end

    def add_todo(data)
       this_todo = Todo.new(data)
        this_todo[:id] = @current_id;
        current_id+=1
        @todos.push(this_todo)
    end

    def all_todos
       
         return @todos
    
	end
end


my_list = TodoManager.new

my_list.add_todo({name: "first" ,description: "hey hey hey yall" })


p my_list