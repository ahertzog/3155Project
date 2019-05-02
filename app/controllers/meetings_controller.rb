class MeetingsController < ApplicationController
    def create
        @club = Club.find(params[:club_id])
        @meeting = @club.comments.create(club_params)
        redirect_to club_path(@club)
    end
    
    def destroy
        @club = club.find(params[:club_id])
        @meeting = @club.meetings.find(params[:id])
        @meeting.destroy
        redirect_to club_path(@club)
    end
end

private
    def club_params
        params.require(:club).permit(:purpose, :timeStamp, :location)
    end