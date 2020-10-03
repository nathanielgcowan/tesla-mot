class CarsController < ApplicationController

    get "/cars" do
        redirect_if_not_logged_in
        @cars = Car.all
        erb :'cars/index'
    end

    get "/cars/new" do
        @error_message = params[:error]
        erb :'cars/new'
    end

    get "/cars/:id/edit" do 
        @error_message = params[:error]
        @car = Car.find(params[:id])
        erb :'cars/edit'
    end

    post "/cars/:id" do
        @car = Car.find(params[:id])
        unless Car.valid_params?(params)
            redirect "/cars/#{@car.id}/edit?error=wrong Car"
        end
        @car.update(params.select{|k|k=="model" || k=="year"})
        redirect "/cars/#{@car.id}"
    end

    get "/cars/:id" do
        redirect_if_not_logged_in
        @car = Car.find(params[:id])
        erb :'cars/show'
    end

    post "/cars" do

        unless Car.valid_params?(params)
            redirect "/cars/new?error=invalid car"
        end
        Car.create(params)
        redirect "/cars"
    end
end
