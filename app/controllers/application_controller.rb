class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end

  def check_admin?
    current_user.has_role? :admin
  end

  def check_admin
    unless check_admin?
      flash[:danger] = "Bạn không có quyền truy cập!"
      redirect_to root_path
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user|
      user.permit(:name, :email, :password, :date_of_birth, :is_female,
        :phone, :address, :country)
    end
    devise_parameter_sanitizer.permit(:account_update) do |user|
      user.permit(:name, :email, :password, :current_password,
        :date_of_birth, :is_female, :phone, :address, :country)
    end
  end
end
