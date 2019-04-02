class BlogsController < ApplicationController
    def index
    end
    
    def new
    end
    
    def create
        render plain: params[:blogs].inspect
    end
end
