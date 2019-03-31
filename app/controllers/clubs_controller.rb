class ClubsController < ApplicationController
    def new
    end
    
    def create
        render plain: params[:clubs].inspect
    end
end
