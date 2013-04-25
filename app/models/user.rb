class User < ActiveRecord::Base
  attr_accessible :email, :id_user, :login, :password

  def authenticate (pass)
    self.password==pass
  end
end
