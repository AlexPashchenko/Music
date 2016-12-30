class PostsController < ApplicationController
  load_and_authorize_resource
  before_action :authenticate_user! , except: [:show, :index]
  before_action :set_post, only: [:show, :edit]

  def index
    @q = Post.ransack(params[:q])
    @posts = @q.result.order('created_at DESC').paginate(:page=> params[:page], :per_page => 5 )
  end

  def show
    @comments= @post.comments.order('created_at DESC').paginate(:page=> params[:page], :per_page => 5 )
    @track=@post.track(params)
    render :show
  end

  def new
    @post = Post.new
    @post.build_track
  end

  def edit
  end

  def create
    @post = current_user.posts.create(post_params)
    respond_to do |format|
      if @post.save
        format.html { redirect_to @post}
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end


  def update

    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post}
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url }
      format.json { head :no_content }
    end
  end

  private
  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :description, :image, track_attributes:[:music, :genre_id])
  end
end
