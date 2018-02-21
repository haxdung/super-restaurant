class Admin::UsersController < ApplicationController
  before_action :authenticate_user!, :check_admin
  before_action :init_user, only: [:new]
  before_action :find_user, only: [:show, :edit, :update, :destroy]

  def index
    @q = User.search params[:q]

    @users = @q.result.sort_users params[:page]
  end

  def new
  end

  def create
    @user = User.new user_params

    if @user.save
      flash[:success] = "add success"
    else
      flash[:success] = "add failed"
    end
  end

  def edit
  end

  def update
    if @user.update_attributes user_params
      flash[:success] = "update success"
    else
      flash[:success] = "update failed"
    end
  end

  def show
  end

  def destroy
    if @user.destroy
      flash[:success] = "delete success"
      redirect_to admin_users_path
    else
      flash[:success] = "delete failed"
      redirect_to admin_users_path
    end
  end

  private

  def init_user
    @user = User.new
  end

  def find_user
    @user = User.find_by id: params[:id]
  end

  def user_params
    params.require(:user).permit :name, :email, :password, :date_of_birth,
      :is_female, :phone, :address, :country
  end
end
