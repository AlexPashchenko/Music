class MainpageController < ApplicationController
  def index
    @genres=Genre.all
    @posts=Post.all.paginate(:page=> params[:page], :per_page => 5 )
  end
end
