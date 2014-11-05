class ApplicationController < ActionController::Base
  protect_from_forgery


  private

  
  def confirm_admin
    
    authenticate_or_request_with_http_basic('Acceso admin') do |username, password|
      username == 'ana' && password == '123456'
    end
 
  end


end
