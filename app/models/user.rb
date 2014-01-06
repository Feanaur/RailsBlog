class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :posts
  has_many :comments
  
  #validates :name, presence: true, length: { minimum: 2 }
  validates :password, length: { minimum: 8 }, confirmation: true
  validates :password_confirmation, presence: true
  validates :email,
    presence: true,
    uniqueness: true,
    format: { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create }
end
