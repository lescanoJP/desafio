class Wish < ApplicationRecord
  belongs_to :user
  validates :movie_id, uniqueness: { scope: :user,
  message: "You have already add this movie to your list"}
end
