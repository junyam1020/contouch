class FriendApprovalsController < ApplicationController
  def new
    @friend_approval = FriendApproval.new
  end

  def create
    FriendApproval.create(friend_approval_params)
    redirect_to root_path
  end

  private

  def friend_approval_params
    params.permit(:user_id, :friend_id).merge(user_id: current_user.id, friend_id: params[:user_id].to_i)
  end
end
