class BatteryController < ApplicationController

    
    get '/batteries/new' do #loads new form
        "cars/new"
        @battery = Battery.new
        erb :"batteries/new"
    end
    
    get '/batteries' do #loads index page
        "cars"
    end
    
    get '/batteries/:id' do  #loads show page
        "cars/:id"
    end
    
    get '/batteries/:id/edit' do #loads edit form
        "cars/:id/edit"
    end
    
    post '/batteries/:id' do  #updates a recipe
        "cars/:id"
    end

    get "/batteries/:id" do 
        "/batteries/:id"
    end
    
    post '/batteries' do  #creates a recipe
        "/cars"
    end
end