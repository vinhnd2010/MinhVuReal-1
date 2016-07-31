class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  layout :layout_by_resourece

  protected
  def layout_by_resourece
    # TODO
    # if admin_signed_in?
    #   "admin"
    # else
    #   "application"
    # end
    "admin"
    # "application"
  end
end
