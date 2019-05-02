class BlogsController < ApplicationController
    def index
        @blogs = Blog.all
    end
    
    def new
        @blog = Blog.new
    end
    
    def create
        @meeting = meeting.find(params[:meeting_id])
        @blog = @meeting.blogs.create(meeting_params)
        redirect_to meeting_path(@meeting)
    end
    
    def destroy
        @meeting = meeting.find(params[:meeting_id])
        @blog = @meeting.blogs.find(params[:id])
        @blog.destroy
        redirect_to meeting_path(@meeting)
    end
end

private 
    def blog_params
        params.require(:blog).permit(:title, :text)
    end

