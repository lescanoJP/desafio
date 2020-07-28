class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :trackable, :validatable
  has_many :wishes
  has_many :watchedmovies
  
  validates :name, :email, presence: true 
 end
