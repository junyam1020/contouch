class UsersController < ApplicationController
  def index
    @users = User.all
    @friend_approvals = FriendApproval.all
    @user_relations = UserRelation.all
  end
end
