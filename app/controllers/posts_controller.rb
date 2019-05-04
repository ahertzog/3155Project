class PostsController < ApplicationController
    def new
        @post = Post.new
    end
    
    def index
        @posts = Post.all
    end
    
    def create
        @club = Club.find(params[:club_id])
        @post = @club.posts.create(post_params)
        redirect_to club_path(@club)
    end
    
    def destroy
        @club = Club.find(params[:club_id])
        @post = @club.posts.find(params[:id])
        @post.destroy
        redirect_to club_path(@club)
    end
end

private
    def post_params
        params.require(:post).permit(:title, :body)
    end