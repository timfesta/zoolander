class UsersController < ApplicationController
  
#form to create new user (pass in an @ from new.html.erb)
#if they are logged in don't want them to sign up again
  def new
    if current_user
      redirect_to profile_path
    else
      @user = User.new
      render :new      
    end
  end


# creates new user in the database, if user is logged in (session) send to profile
  def create
  	user = User.new(user_params)
  	if user.save 
  		session[:user_id] = user.id
  		# redirect to '/profile'
  		redirect_to profile_path
  	else
  		# redirect to '/signup'
  		redirect_to signup_path
  	end
  end

#show current_user finding user by the instace of a current user their session by user id 
  def show
  	# @current_user = User.find(session[user_id]) --- commented out because of helper method in application controller
  	render :show
  end

  private
  def user_params
  	params.require(:user).permit(:user_name, :email, :password)
  end

end
