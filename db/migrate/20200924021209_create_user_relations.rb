class CreateUserRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :user_relations, id: :integer do |t|
      t.integer :user_id,   null: false, foreign_key: true
      t.integer :friend_id, null: false, foreign_key: true
      t.text :friend_introduction

      t.timestamps
    end
  end
end
