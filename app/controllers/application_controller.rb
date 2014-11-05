class ApplicationController < ActionController::Base
  protect_from_forgery
  private

  def confirm_logged_in
    unless session[:shelter_id]
      flash[:notice]="Por favor logate"
      redirect_to(:action => 'login')
      return false
    else
      return true
    end
  end
end
