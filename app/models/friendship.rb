class Friendship < ApplicationRecord
  belongs_to :user_1, class_name: "User"
  belongs_to :user_2, class_name: "User"

  def self.create_mutual_friendship user_1_id, user_2_id
    Friendship.create(user_1_id: user_1_id, user_2_id: user_2_id)
    Friendship.create(user_1_id: user_2_id, user_2_id: user_1_id)
  end

  def self.delete_mutual_friendship user_1_id, user_2_id
    friendship1 = Friendship.find_by(user_1_id: user_1_id, user_2_id: user_2_id)
    friendship2 = Friendship.find_by(user_1_id: user_2_id, user_2_id: user_1_id)
    friendship1.destroy 
    friendship2.destroy
  end
end
