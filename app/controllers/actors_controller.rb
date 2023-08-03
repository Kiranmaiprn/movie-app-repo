class ActorsController < ApplicationController
    before_action :set_actor
    def index
        @actors=@movie.actors
        render json: @actors
    end
    def show
        @actor=@movie.actors.find(params[:id])
        render json: @actor
    end
    def create
        @actor=@movie.actors.create(actor_params)
        @actor.save
        render json: @actor
    end
    def update
        @actor=@movie.actors.update(actor_params)
        @actor.save
        render json: @actor
    end
    private
    def actor_params
        params.require(:actors).permit(:name, :role)
    end
    def set_actor
        @movie=Movie.find(params[:movie_id])
    end



end
