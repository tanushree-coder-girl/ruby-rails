# email : string 
# password_digest :string
# password : string
# password_confirmation: string 

# for authentication >      user.authenticate

class User < ApplicationRecord
    has_secure_password

    validates :email, presence: true, uniqueness: { case_sensitive: false }, length: {maximum: 50}, format: { with: /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/ }
    
end
