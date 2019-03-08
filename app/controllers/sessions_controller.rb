class SessionsController < ApplicationController

    def new

    end

    def create 
        login = Login.find_by(email: params[:session][:email].downcase)
        if login && login.authenticate(params[:session][:password])
            session[:login_id] = login.id
            flash[:success] = "you have successfully loggen in"
            redirect_to maps_path(login)

        else
            flash.now[:danger] = "There was something wrong whit your login information"
           render 'new' 

        end
    end

    def destroy
        session[:login_id] = nil
        flash[:success] = "you have logged out"
        redirect_to root_path 

    end
end