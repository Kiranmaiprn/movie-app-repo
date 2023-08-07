class MoviesController < ApplicationController
    before_action :set_movie, only: %i[show update destroy]
    http_basic_authenticate_with name:"movie", password:"secret", except: [:show, :index]

    def index
        @movies=Movie.all
        render json: @movies
    end
    def show
        if @movie.nil?
            flash.now[:alert] = "Your movie was not found"
            redirect_to action: "index"
        else
            render json: @movie 
        end
    end
    def create
        @movie=Movie.new(movie_params)
        if @movie.save
            render json: @movie
        else
            render json: @movie.errors, status: :unprocessable_entity
        end
    end
    def update
        if not(@movie.nil?) && @movie.update(movie_params) 
            render json: @movie
        else
            redirect_to action: "index", status: :unprocessable_entity
        end
    end
    def destroy 
        @movie.destroy
        redirect_to root_path, status: :see_other    
    end
    def movie_params
        params.require(:movie).permit(:title, :description, :release_year, :rating, :status)
    end
    def set_movie
        @movie=Movie.find_by(id: params[:id])
    end
    



end
