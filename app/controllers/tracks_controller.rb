class TracksController < ApplicationController
  # GET /tracks
  # GET /tracks.json
  def index
    @tracks = Track.all
  end

    # Never trust parameters from the scary internet, only allow the white list through.
    def track_params
      params.require(:track).permit(:music, :genre_id)
    end
end
