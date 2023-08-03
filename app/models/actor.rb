class Actor < ApplicationRecord
  belongs_to :movie
  validates :name, uniqueness: {scope: :movie_id, message:"actor name must be unique"}
end
