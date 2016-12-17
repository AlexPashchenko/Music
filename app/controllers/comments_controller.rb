class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post

  # POST /comments
  # POST /comments.json
  def create
    @comment=@post.comments.create(comment_params)
    @comment.user_id=current_user.id
    @comment.save
    if request.xhr?
      render json: { success: true }
    else
      redirect_to post_path(@post)
    end
  end



  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_post
    @post = Post.find(params[:post_id])
  end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:text)
    end
end
