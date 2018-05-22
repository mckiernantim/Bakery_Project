require 'sinatra'
require 'byebug'
require 'mailgun'
require './class'
require './cookies'
require "./cakes"
require "./muffins"
order_counter = 1
class Cart
    def initialize()
        @items = [];
       @id = ""


    end
    def contents()
        return @items

    end
    
end


my_cart = Cart.new()


get('/')do

    erb(:home)
end

get('/cookies')do

    erb(:cookies)
end

get('/cakes')do 
    erb(:cakes)
end

get('/muffins')do

    erb(:muffins)
end
get('/home')do


    erb(:home)
end

get('/cart')do


    erb(:cart)
end

get('/thnx')do

    erb(:thnx)
end
post('/muffins')do

    redirect "/muffins"
end


post('/connect') do

    # First, instantiate the Mailgun Client with your API key
    mg_client = Mailgun::Client.new (ENV['MAILGUN_API_KEY'])

  # Define your message parameters
  message_params =  { from: 'mckiernantim@gmail.com',
                      to:   '#{params[:connect]},
                      subject: 'YO THE TODO HAS BEEN UPDATED',
                      text:    'hooray!'

                  }

  # Send your message through the client
  mg_client.send_message ENV['MAILGUN_API_DOMAIN'], message_params


    erb(:thnx)
end


