class ApplicationController < ActionController::Base
    before_action :fetch_user
    helper_method :current_user

    private
    def fetch_user
        @current_user = User.find_by :id => session[:user_id]
        session[:user_id] = nil unless @current_user.present? # Log out non-existent users.
    end

    def current_user
        @current_user
    end

    def check_for_login
        redirect_to login_path unless @current_user.present?
    end

    def check_for_admin
        redirect_to login_path unless (@current_user.present? && @current_user.admin?)
    end
end
