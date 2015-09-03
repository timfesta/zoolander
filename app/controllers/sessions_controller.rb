class SessionsController < ApplicationController
  
#login form
  def new
  	render :new
  		
  end


#authenticate the user, set session
#find_by because we don't have their id just email and/or password and can use any database column after the find_by
#finding by user_params and getting the email out of the params
# both have to be true user is not nil and password was authenticated

  def create
  	user = User.find_by_email(user_params[:email])
  	
  	if user && user.authenticate(user_params[:password])
		session[:user_id] = user.id
  		redirect_to profile_path
  	else
  		redirect_to login_path
  	end
  end

#clear sesssion (log out user)
  def destroy
  	sesssion[:user_id] = nil
  	redirect_to root_path
  end

  private
  def user_params
  	params.require(:user).permit(:email, :password)
  	
  end
  	
 
end
