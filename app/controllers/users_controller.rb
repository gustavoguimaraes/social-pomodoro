class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  def index
    @users = User.all
    render "/users"
  end

  def show
    render "/user"
  end

  def create
    @user = User.new(user_params)

    if @user.save
      render_success("User was successfully created.")
    else
      render_error(@user.descriptive_error)
    end
  end

  def update
    if @user.update(user_params)
      render_success("User was successfully updated.")
    else
      render_error(@user.descriptive_error)
    end
  end

  def destroy
    @user.destroy
    render_success("User was successfully destroyed.")
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(User::PERMITTED_PARAMS)
  end
end
