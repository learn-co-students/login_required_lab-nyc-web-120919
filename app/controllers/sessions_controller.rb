class SessionsController < ApplicationController
    def new
    end

    def show
        @name = session[:name]
    end
  
    def create
      return redirect_to(controller: 'sessions',
                         action: 'new') if !params[:name] || params[:name].empty?
      session[:name] = params[:name]
      redirect_to session_path
    end
  
    def destroy
      session.delete :name
      redirect_to controller: 'sessions', action: 'new'
    end
end