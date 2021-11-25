class PasswordResetsController < ApplicationController
    def new
    end
    def create
        @user = User.find_by(email: params[:email])

        if @user.present?
            # send email 
            PasswordMailer.with(user: @user).reset.deliver_now
        else
            redirect_to root_path, notice: 'If an account with that email we found, we have set a link to reset your passwrod'
        end
    end     
end