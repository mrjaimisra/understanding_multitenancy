class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_store

  def current_store
    @current_store ||= Store.find_by(url: params[:store]) if params[:store]
  end
end
