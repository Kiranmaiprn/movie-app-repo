class Movie < ApplicationRecord
    has_many :actors, dependent: :destroy
    validates :title, presence: true, uniqueness: true, format: {with: /\A[a-zA-Z]+\z/, message: "only allows letters"}
    validates :description, length: {minimum: 10, maximum: 1000}
    validates :release_year, numericality: true



    after_destroy :log_destroy_action
    
    before_create do
        self.title = title.capitalize
        
    end
    
    def log_destroy_action
        puts 'Movie destroyed'
    end
end
