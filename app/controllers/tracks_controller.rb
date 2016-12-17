class TracksController < ApplicationController
  # GET /tracks
  # GET /tracks.json
  def index
    @tracks = Track.all
  end

  # GET /tracks/1
  # GET /tracks/1.json


    # Never trust parameters from the scary internet, only allow the white list through.
    def track_params
      params.require(:track).permit(:music)
    end
end
