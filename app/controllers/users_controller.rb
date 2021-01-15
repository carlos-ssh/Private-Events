class UsersController < ApplicationController
  before_action :current_user

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
    session[:user_id] = @user.id
    flash.notice = "User #{@user.name} successfully created! Thank you for signing up!"
    redirect_to user_path(@user)
  end

  def show
    @user = User.find(params[:id])
    @created_events = current_user.events
    @attended_events = @user.attended_events
    @past_events = current_user.attended_events.past
    @upcoming_events = current_user.attended_events.upcoming
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
