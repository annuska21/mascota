class Admin::AdminController < ApplicationController

  before_filter :confirm_admin 
  layout 'admin'
  def index

  end

  def confirm_admin
    
    authenticate_or_request_with_http_basic('Acceso admin') do |username, password|
      username == 'ana' && password == '123456'
    end
 
  end



end