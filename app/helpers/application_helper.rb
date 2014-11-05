module ApplicationHelper

  def user_signed
    return !session[:shelter_id].blank? 
  end

end