module SessionsHelper
  def sign_in(user)
    session[:logged] = user
  end
  
  def signed_in?
    !session[:logged].nil?
  end
  
  def sign_out
    session[:logged] = nil
  end
  
  def current_user
    session[:logged]
  end
end
