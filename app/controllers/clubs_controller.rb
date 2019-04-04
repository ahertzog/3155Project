class ClubsController < ApplicationController
   
    def new
        
    end
    
    def create
        render plain: params[:club].inspect
        
        if @club.save
            redirect_to @club
        else
            render :new
        end
    end
    
     def index
        @Clubs = Club.all
    end
    
end

private
    def club_params
        params.require(:club).permit(:clubName, :whoWeAre, :dates, :location, :phone, :email)
    end


