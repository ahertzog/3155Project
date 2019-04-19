class BlogsController < ApplicationController
    def index
        @blogs = Blog.all
    end
    
    def show
        @blog = Blog.find(params[:id])
    end
    
    def new
        @blog = Blog.new
    end
    
    def edit
        @blog = Blog.find(params[:id])
    end
    
    def update
        @blog = Blog.find(params[:id])
        if @blog.update(blog_params)
            redirect_to @blog
        else
            render 'edit'
        end
    end
    
    def destroy
        @blog = Blog.find(params[:id])
        @blog.destroy
        
        redirect_to blogs_path
    end
    
    
    def create
        @blog = Blog.new(blog_params)
        
        
        if @blog.save
            redirect_to @blog
        else
            render 'new'
        end
    end
end

private 
    def Blog_params
            params.require(:blog).permit(:title, :body)
    end

