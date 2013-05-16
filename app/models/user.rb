class User < ActiveRecord::Base
  attr_accessible :email, :id_user, :login, :password
  belongs_to :member

  def authenticate (pass)
    self.password==pass
  end
end
