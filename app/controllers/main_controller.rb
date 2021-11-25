class MainController < ApplicationController

    def index 
        # flash.now[:notice] = " Logged in Successfully"
        # flash.now[:alert] = " Invalid Username And password"

        # set this inside application controller for use multiple times
        # if session[:user_id] 
        #     # @user = User.find(session[:user_id])
        #     @user = User.find_by(id: session[:user_id])
        # end
    end
end