class UsersController < ApplicationController
  def index
    @users = User.all
    @friend_approvals = FriendApproval.all
    # @confirm_approval = FriendApproval.exists?(user_id: current_user.id, friend_id: @user.id)
  end
end
