class User < ActiveRecord::Base
  attr_accessible :email, :login, :password, :member_id, :user_id
  belongs_to :member
  
  def authenticate (pass)
    self.password==pass
  end
  
  
  def getMember ()
    @member = Member.where("user_id = ?", self.id).first
    if @member.nil?
      ""
    else 
      @member.surname
    end
  end
  
  def getMemberId ()
    @member = Member.where("user_id = ?", self.id).first
    if @member.nil?
      -1
    else 
      @member.id
    end
  end
  
end
