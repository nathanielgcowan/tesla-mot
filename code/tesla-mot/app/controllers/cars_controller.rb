class CarsController < ApplicationController

    get '/cars' do
        "A list of publicaly available cars"
    end

    get '/cars/new' do
        # Checking if they are logged in
        if !logged_in?
            redirect "users/login"
        else
            "A new post form"
        end
    end

    get '/cars/:id/edit' do
        # Checking if they are logged in
        if !logged_in?
            redirect '/users/login' # Redirecting if they aren't
        else
            #how do I find the post that only the author user is allowsed to edit
            if cars = current_user.cars.find_by(params[:id])
                "An car remodeling #{current_user.id} is editing #{car.id}" # rendering if they are
            else
                redirect '/cars'
            end
        end
    end
end
