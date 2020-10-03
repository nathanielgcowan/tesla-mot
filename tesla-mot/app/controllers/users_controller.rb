class UsersController < ApplicationController

    get '/users/login' do
        erb :'users/login'
    end

    post '/users' do
        login(params[:email], params[:password])
        redirect '/cars'
    end

    get '/logout' do
        logout!
        redirect '/cars'
    end


    get '/users/new' do
        erb :"users/new"
    end

    post '/users' do
        @user= User.new
        @user.email = params[:email]
        @user.password = params[:password]
        if @user.save
            redirect 'users/login'
        else 
            erb :'/users/new'
        end
    end
end