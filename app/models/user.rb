class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  #CHANGE email TO name NAME>>>>>>>>>><<<<<<<<<-----------------
  validates_presence_of :email

  def first_name
    self.email.split("@").first
  end

  def last_name
    self.email.split("@").last
  end

end
