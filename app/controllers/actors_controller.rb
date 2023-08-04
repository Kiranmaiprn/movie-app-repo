class ActorsController < ApplicationController
    before_action :set_actor, only: %i[show update destroy]
    def index
        @actors=@movie.actors
        render json: @actors
    end
   
    def show
        render json: @actor
    end
    
    def create
        @actor=@movie.actors.create(actor_params)
        @actor.save
        render json: @actor
    end
   
    def update
        @actor.update(actor_params)
        @actor.save
        render json: @actor
    end

    def destroy
        @actor.destroy
        redirect_to action: "index"
    end
    
    private
    
    def actor_params
        params.require(:actor).permit(:name, :role)
    end
    
    def set_actor
        @movie=Movie.find_by(id: params[:movie_id])
        @actor=@movie.actors.find(params[:id])
    end



end
