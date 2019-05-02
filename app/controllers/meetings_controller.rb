class MeetingsController < ApplicationController
    def new
    end
    
    def index
        @meetings = Meeting.all
    end
    
    def create
        @club = Club.find(params[:club_id])
        @meeting = @club.meetings.create(meeting_params)
        redirect_to club_path(@club)
    end
    
    def destroy
        @club = Club.find(params[:club_id])
        @meeting = @club.meetings.find(params[:id])
        @meeting.destroy
        redirect_to club_path(@club)
    end
end

private
    def meeting_params
        params.require(:meeting).permit(:purpose, :timeStamp, :location)
    end