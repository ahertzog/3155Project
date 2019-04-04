class ClubsController < ApplicationController
    def new
    end
    
    def create
        @club = Club.new(club_params)
        
        if @club.save
            redirect_to @club
        else
            render 'new'
        end
    end
    
end

private
    def club_params
        params.require(:club).permit(:clubName, :whoWeAre, :dates, :location, :phone, :email)
end

