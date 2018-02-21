class Admin::MenusController < ApplicationController
  before_action :authenticate_user!, :check_admin
  before_action :init_menu, only: [:new]
  before_action :find_menu, only: [:show, :edit, :update, :destroy]

  def index
    @q = Menu.search params[:q]

    @menus = @q.result.sort_menus params[:page]
  end

  def new
  end

  def create
    @menu = Menu.new menu_params

    if @menu.save
      flash[:success] = "add success"
      redirect_to admin_menus_path
    else
      flash[:success] = "add failed"
    end
  end

  def edit
  end

  def update
    if @menu.update_attributes menu_params
      flash[:success] = "update success"
      redirect_to admin_menus_path
    else
      flash[:success] = "update failed"
    end
  end

  def show
  end

  def destroy
    if @menu.destroy
      flash[:success] = "delete success"
      redirect_to admin_menus_path
    else
      flash[:success] = "delete failed"
      redirect_to admin_menus_path
    end
  end

  private

  def init_menu
    @menu = Menu.new
  end

  def find_menu
    @menu = Menu.find_by id: params[:id]
  end

  def menu_params
    params.require(:menu).permit :name, :description, :image
  end
end
