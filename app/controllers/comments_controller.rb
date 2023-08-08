class CommentsController < ApplicationController
    http_basic_authenticate_with name:"movie", password: "secret", only::destroy
    
    def create
        @movie=Movie.find(params[:movie_id])
        @comment=@movie.comments.create(comment_params)
        render json: @comment
      end
      def destroy
        @movie=Movie.find(params[:movie_id])
    
        @comment=@movie.comments.find(params[:id])
        @comment.destroy
        render json: @movie
      end
      private
      def comment_params
        params.require(:comment).permit(:commenter, :body, :status)
      end
end
