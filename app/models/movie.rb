class Movie < ApplicationRecord
    validates :title, presence: true, uniqueness: true
    validates :description, length: {minimum: 10, maximum: 1000}
end
