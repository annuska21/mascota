class AccessController < ApplicationController
  
  before_filter :confirm_logged_in, :except => [:login, :attempt_login, :logout]

  def index
  end

  def login
  end

  def attempt_login
    if params[:usuario].present? && params[:password].present?
      found_user = Shelter.where(:usuario => params[:usuario]).first
      if found_user
        authorized_user = found_user.authenticate(params[:password])
      end
    end
    if authorized_user
      session[:shelter_id] = authorized_user.id
      session[:usuario] = authorized_user.usuario
      flash[:notice] = "Logado"
      redirect_to action: "index"
    else
      flash[:notice] = "Usuario invalido"
      redirect_to action: "login"
    end  
  end



  def logout
     session[:shelter_id] = nil
     session[:usuario] = nil
     redirect_to action: "login"
  end
  
end
