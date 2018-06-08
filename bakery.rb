

require 'sinatra'
require 'byebug'
require 'mailgun'
require './class'
require './cookies'
require "./cakes"
require "./muffins"
order_counter = 1




get('/')do

    erb(:cookies)
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
    mg_client = Mailgun::Client.new (ENV['MAILGUN_API_KEY'])
    message_params =  { from: 'mckiernantim@gmail.com',
                      to:   'mckiernantim@gmail.com',
                      subject: 'recipt',
                      html:   erb(:thnx, layout:false)
                    }
     mg_client.send_message ENV['MAILGUN_API_DOMAIN'], message_params
    erb(:thnx)
end
post('/muffins')do

    redirect "/muffins"
end


post('/connect') do
    mg_client = Mailgun::Client.new (ENV['MAILGUN_API_KEY'])
    message_params =  { from: 'mckiernantim@gmail.com',
                      to:   params[:connect],
                      subject: 'product catalogue',
                      text:    'Spring is here!  Friendly Bakery is back with some sweet spring deals just in time for Memorial day!

                                Cakes:
                                In addation to our normal lineup we are featuring three new styles:

                                Sinful Devils Food:
                                Chocolate on chocolate on chocolate!
                                 $20 for a small or make it a large for $35

                                 Heavenly Angel Food:
                                 A summertime favorite makes an early debut
                                 light, fluffy and topped with seasonl fruits here for a limited time!
                                 $20 for a small or make it a large for $35

                                 Luscious Red Velvet:
                                 The classic is back!
                                 Our all time best seller makes a return for those who cant get enough!
                                 $20 for a small or make it a large for $35


                                 Muffins: 
                                 We tried calling them breakfast cupcakes but we decided if it aint broke, why fix it?


                                 Lemon Poppy Seed:
                                 Springtime crisp and lovely - just make sure you dont have an upcoming drug test!
                                 2$ / 1.  20$ / 12


                                 Decadent Choclate:
                                 We cant believe this is a breakfast item.  Well, yeah we can.
                                 2$ / 1.  20$ / 12


                                 Homestlye Bueberry:
                                 Grandma classic - in season and bursting with spring flavor.  Get yours now.
                                 2$ / 1   20$ / 12



                                 Cookies:
                                 Who are we kidding by putting this last?  Our cookies put us on the map!


                                 Seasonal Sugar:
                                 Meorial Day sweets are just around the corner, get a dozen of these sugary delights to perfect your holiday

                                 1$ / 1   10$ /12


                                 Chocolate Chip:

                                 As American as Apple pie - or chocolate chip cookies.  Or Memorial day?  Ok, we good...

                                 1$ / 1  $10 / 12


                                 Country Oatmeal Raisin:

                                 Sweet, hearty and delicious.  With so much oatmeal you can tell yourself they are good for you.  Go for it....


                                 1$ / 1  $10 /12



                                 Come visit us anytime !   And make sure to get your orders in now!

                                Your friends at Friendly.  

                                Peace'
                    }
    mg_client.send_message ENV['MAILGUN_API_DOMAIN'], message_params


    erb(:cookies)
end


