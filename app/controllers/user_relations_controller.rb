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

  def edit
    @user_relation = UserRelation.find(params[:id])
    @users = User.all
    @friend_approvals = FriendApproval.all
  end

  def update
    @user_relation = UserRelation.find(params[:id])
    if @user_relation.update(user_relation_params)
      redirect_to root_path
    end
  end

  private
  def user_relation_params_first
    params.permit(:user_id, :friend_id).merge(user_id: current_user.id, friend_id: params[:user_id].to_i)
  end

  def user_relation_params_second
    params.permit(:user_id, :friend_id).merge(user_id: params[:user_id].to_i, friend_id: current_user.id)
  end

  def user_relation_params
    params.require(:user_relation).permit(:friend_introduction).merge(user_id: current_user.id, id: params[:id].to_i, friend_introduction: params[:user_relation][:friend_intrduction] )
    # friend_intrduction: params[:user_relation]
  end
end
