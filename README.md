<!-- creating app -->
rails new app-name -T

<!-- add route -->
get '/about', to:'about#index'

<!-- root route -->
root to:'main#index'

<!-- add bootstrap cdn link in views/layout/application.html.erb -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<!-- Add partials  -->
_partialname.html.erb

add this particle in any file like 
<%= render "partialname" %>

<!-- links -->
<%= link_to "home", root_path, class: "class-name" %>

<!-- for find all routes -->
rake routes

<!-- Add flash messages  -->
flash[:error] = "error msg"
flash.now[:success] = "success msg"

<!--  Creating model -->
rails generate model User email password_digest

<!-- migrate -->
rake db:migrate

<!-- migrate roll back -->
rake db:rollback

<!-- migrate and undo and redo -->
db:migrate:redo

<!-- for rails console -->
rails c

<!-- for has secure password -->
gem 'bcrypt', '~> 3.1.7'

bundle install

then add in modal
    has_secure_password

has secure password provides us
# password_digest :string
# password : string
# password_confirmation: string 

# for authentication >      user.authenticate

<!-- validations -->
validates :email, presence: true, uniqueness: { case_sensitive: false }, length: {maximum: 50}, format: { with: /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/ }

<!-- validations inside table for null value not allowed -->
t.string :email, :null => false

<!-- Create signup form -->

<!-- add errors in signup -->

<!-- Login with session cookies -->

<!-- Mailer -->
rails g mailer Password reset

<!-- Rails console for token -->
<!-- official documentation -->
https://github.com/rails/globalid

user.signed_id 
user.to_global_id 
user.to_global_id.to_s
user.signed_id(expires_in: 15.minutes)
user.signed_id(expires_in: 15.minutes, purpose: "password reset")

