class FriendRequest < ApplicationRecord
  belongs_to :requested, class_name: "User"
  belongs_to :receiver, class_name: "User"
end
