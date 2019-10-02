class Admin < ApplicationRecord
  validates :email, presence: true
  validates :password, presence: true
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
