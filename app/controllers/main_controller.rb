class MainController < ApplicationController
    def index 
        flash.now[:notice] = " Logged in Successfully"
        flash.now[:alert] = " Invalid Username And password"
    end
end