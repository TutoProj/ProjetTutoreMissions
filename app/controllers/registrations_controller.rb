# -*- coding: undecided -*-
class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
    # add custom create logic here 
   
  end

  def update
    super
  end
  
  protected
  def after_sign_up_path_for(resource)
    :new_user_session_path
  end  
end 
