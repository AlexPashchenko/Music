class MainpageController < ApplicationController
  def index
    @posts=Post.all.paginate(:page=> params[:page], :per_page => 5 )
  end
end
