class CreateFriendRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :friend_requests do |t|
      t.references :requested, null: false
      t.references :receiver, null: false

      t.timestamps
    end
  end
end
