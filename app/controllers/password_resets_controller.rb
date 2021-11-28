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

    def edit
        @user = User.find_signed!(params[:token], purpose: "password_reset")  
    rescue ActiveSupport::MessageVerifier::InvalidSignature
        redirect_to sign_in_path, alert: "your token has expired, please try again"
    end

    def update
        @user = User.find_signed!(params[:token], purpose: "password_reset")  
        if @user.update(password_params)
            redirect_to sign_in_path, notice: " Your password was reset successfully , please sign in"
        else
            render :edit
        end
    end

    private 
    
    def password_params
        params.require(:user).permit(:password, :password_confirmation)
    end
end
