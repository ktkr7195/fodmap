class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable         
  validates :firstName, presence: true
  validates :firstName, length: { maximum: 20 }
  validates :lastName, presence: true
  validates :lastName, length: { maximum: 20 }
  validates :password, presence: true
  validates :email, presence: true 
  validates :email, uniqueness: true
end
