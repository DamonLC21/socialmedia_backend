class User < ApplicationRecord
  has_secure_password
  has_many :friendships, foreign_key: :user_1
  has_many :friends, through: :friendships, foreign_key: :user_1, source: :user_2
  has_many :pending_requests, foreign_key: :receiver, class_name: "FriendRequest"
  has_many :sent_requests, foreign_key: :requested, class_name: "FriendRequest"
end
