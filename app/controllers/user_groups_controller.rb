class UserGroupsController < ApplicationController
  def create
    @group = Group.find(params[:group_id])
    @user_group = UserGroup.new
    @user_group.user = current_user
    @user_group.group = @group
    if @user_group.save
      redirect_to @group, notice: 'You have successfully signed up for this event.'
    else
      render 'groups/show'
    end
  end

  def destroy
    @groupuser = UserGroup.find(params[:id])
    @groupuser.destroy
    redirect_to group_path(@groupuser.group), notice: "Successfully cancelled registration."
  end
end
