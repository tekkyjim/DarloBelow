class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_last_request_at
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end


  private

  def set_last_request_at
    current_user.update_attribute(:last_request_at, Time.now) if user_signed_in?
  end
end


