class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post

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
  def set_post
    @post = Post.find(params[:post_id])
  end

    def comment_params
      params.require(:comment).permit(:text)
    end
end
