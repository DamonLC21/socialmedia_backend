class CreateFriendships < ActiveRecord::Migration[6.0]
  def change
    create_table :friendships do |t|
      t.references :user_1, null: false
      t.references :user_2, null: false

      t.timestamps
    end
  end
end
