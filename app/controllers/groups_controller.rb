class GroupsController < ApplicationController

  def index
    if params[:query].present?
      @groups = Group.multisearch(params[:query])
    else
      @groups = Group.all
    end
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @group.user = current_user
    @group.save
    redirect_to group_path(@group)
  end

  def edit
    @group = Group.find(params[:id])
    flash[:notice] = "Group successfully updated"
  end

  def update
    @group = Group.find(params[:id])
    @group.update(group_params)
    redirect_to @group

  end

  def show
    @group = Group.find(params[:id])
    @user_groups = UserGroup.where(group_id: @group.id)
    @users = @user_groups.map { |ug| User.find(ug.user_id) }
    @post = Post.new
  end

  private

  def group_params
    params.require(:group).permit(:title, :description, :photo)
  end
end
