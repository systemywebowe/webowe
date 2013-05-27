class SessionsController < ApplicationController

  def new
  end
  
  
  def create
    
    user = User.find_by_login(params[:session][:login])
    if user && user.authenticate(params[:session][:password])
      sign_in_in user
      redirect_to '/home'
    else
      flash[:error] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to '/home'
  end
end

