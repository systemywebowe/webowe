class SessionsController < ApplicationController

  def new
  end
  
  
  def create
    
    user = User.find_by_login(params[:session][:login])
    if user && user.authenticate(params[:session][:password])
      redirect_to '/'
    else
      flash[:error] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end
  end

  def destroy
  end
end

