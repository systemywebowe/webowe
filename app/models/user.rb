class User < ActiveRecord::Base
  attr_accessible :email, :login, :password
  belongs_to :member
  
  def authenticate (pass)
    self.password==pass
  end
end
