class SessionsController < ApplicationController

    def new

    end 

    def show
        @user = session[:name]
    end 

    def create
        
        if params[:name].blank?
            redirect_to login_path
        else 
        session[:name] = params[:name]
        redirect_to logged_in_path(session[:name])
        end 
    end 

    def destroy
        session.delete :name
        redirect_to login_path
    end    

end
