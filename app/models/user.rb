class User < ActiveRecord::Base
  has_many :statuses
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :first_name, :last_name, :full_name, :profile_name, :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

  def full_name
    "#{first_name} #{last_name}"
  end

end
