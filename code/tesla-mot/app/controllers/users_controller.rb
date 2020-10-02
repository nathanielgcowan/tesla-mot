class UsersController < ApplicationController

    # get '/users/:id' do
    # #     if !logged_in?
    # #         redirect : '/cars'
    # #   end

    # #   @user = User.find(params[:id])

    # #     if !@user.nil && @user == current_user
    # #         erb :'users/show'
    # #     else
    # #         redirect '/cars'
    # #     end
    # end

    get '/users/new' do
        erb :'users/new'
      end

    get '/users/login' do
        erb :'users/login'
      end

end