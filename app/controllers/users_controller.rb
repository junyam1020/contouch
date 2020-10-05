class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @users = User.all
    @friend_approvals = FriendApproval.all
    @user_relations = UserRelation.all
    # カレントユーザーの友達の友達だが、カレントユーザーではなく、またカレントユーザーの友達でもないユーザー
    query = "SELECT * FROM user_relations WHERE user_id IN(
      SELECT friend_id FROM user_relations WHERE user_id = ?)
      AND friend_id <> ?
      AND friend_id NOT IN (SELECT friend_id FROM user_relations WHERE user_id = ?)"
    @friend_of_friends = UserRelation.find_by_sql([query, current_user.id, current_user.id, current_user.id])
    # binding.pry
  end
end
