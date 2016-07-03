class TableController < ApplicationController
  def index
    if current_user
      if current_user.has_role? :admin
        redirect_to character_templates_path
      else
        redirect_to current_user
      end
    else
      redirect_to new_user_session_path
    end
  end
end