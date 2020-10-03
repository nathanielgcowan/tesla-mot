class UsersController < ApplicationController

    get '/users/:id' do
        @user = User.find(params[:id])

        if !logged_in?
            redirect '/cars'
        elsif !@user.nil && @user == current_user
            erb :'users/show'
        else
            redirect 
            '/cars'
        end
    end

    get '/users/new' do
            erb :'users/new'
    end

    post '/users/new' do
        if params[:username] == "" || params[:password] == ""
            redirect to '/users/new'
        else
            @user = User.create(:username => params[:username], :password => params[:password])
            session[:user_id] = @user.id
            redirect '/cars'
        end
    end


    get '/users/login' do
        @error_message = params[:error]
        if !session[:user_id]
            erb :'users/login'
        else
            redirect '/cars'
        end
    end

    post 'users/login' do
        user = User.find_by(:username => params[:username])
        if user && user.authenticate(params[:password])
          session[:user_id] = user.id
          redirect "/cars"
        else
          redirect to 'users/new'
        end
      end

      get 'users/logout' do
        if session[:user_id] != nil
          session.destroy
          redirect to 'users/login'
        else
          redirect to '/'
        end
      end


end