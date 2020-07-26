class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :trackable, :validatable
  has_many :wishes

  validates :name, :email, presence: true 
 end
