class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def not_authenticated
    redirect_to login_url, notice: 'Please log in'
  end
  
end
