class Movie < ApplicationRecord

    #has_many :through relationship
    has_many :movie_actors
    has_many :actors, through: :movie_actors

    #many to many relationship
    has_and_belongs_to_many :genres

    #has many relationship
    has_many :comments, dependent: :destroy

    #validations
    validates :title, presence: true, uniqueness: true # format: {with: /\S\A[a-zA-Z]+\z/, message: "only allows letters"}
    validates :description, length: {minimum: 10, maximum: 1000}
    validates_numericality_of :release_year
    
    #concern for validation and callback method
    include Visible



    after_destroy :log_destroy_action
    
    before_create do
        self.title = title.capitalize
        
    end
    
    def log_destroy_action
        puts 'Movie destroyed'
    end
end
