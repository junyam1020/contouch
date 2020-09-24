class UserRelationsController < ApplicationController
  def new
    @user_relation = UserRelation.new
  end

  def create
    # 申請元・申請先それぞれで友達の紐付け処理
    UserRelation.create(user_relation_params_first)
    UserRelation.create(user_relation_params_second)
    # 友達申請テーブルのレコード削除処理
    id = FriendApproval.where(user_id: params[:user_id].to_i, friend_id: current_user.id).pluck(:id)[0]
    friend_approval = FriendApproval.find(id.to_s)
    friend_approval.destroy
    redirect_to root_path
  end

  private
  def user_relation_params_first
    params.permit(:user_id, :friend_id).merge(user_id: current_user.id, friend_id: params[:user_id].to_i)
  end

  def user_relation_params_second
    params.permit(:user_id, :friend_id).merge(user_id: params[:user_id].to_i, friend_id: current_user.id)
  end
end
