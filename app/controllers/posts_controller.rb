class PostsController < ApplicationController

  def create
    @group = Group.find(params[:group_id])
    @post = Post.new(post_params)
    @post.group = @group
    @post.user = current_user
    if @post.save
      redirect_to group_path(@group)
    else
      render "posts/show", status: :unprocessable_entity
    end
  end

  def new
    @post = Post.new
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end
end
