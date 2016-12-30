class TracksController < ApplicationController

    def track_params
      params.require(:track).permit(:music, :genre_id)
    end
end
