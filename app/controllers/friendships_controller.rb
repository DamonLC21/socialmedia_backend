class FriendshipsController < ApplicationController
  skip_before_action :authorized

  def create 
    @friendship = Friendship.create_mutual_friendship(params[:user_1_id], params[:user_2_id])

    render json: @friendship
  end
end
