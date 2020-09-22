class CreateFriendApprovals < ActiveRecord::Migration[6.0]
  def change
    create_table :friend_approvals, id: :integer do |t|
      t.integer :user_id,   foreign_key: true
      t.integer :friend_id, foreign_key: true

      t.timestamps
    end
  end
end
