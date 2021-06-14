class FriendsController < ApplicationController
  before_action :set_friend, only: [:show, :edit, :update, :destroy]

  def index
    @friends = Friend.all
  end

  def new
    @friend = Friend.new
  end

  def create
    @friend = Friend.new(friend_params)
    if @friend.save
      flash[:notice] = "Friend detail saved!"
      redirect_to @friend
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @friend.update(friend_params)
      flash[:notice] = "Friend detail updated successfully!"
      redirect_to @friend
    else
      render 'edit'
    end
  end

  def destroy
    @friend.destroy
    redirect_to friends_path
  end

  private
  def set_friend
    @friend = Friend.find(params[:id])
  end

  def friend_params
    params.require(:friend).permit(:fname, :lname)
  end
end
