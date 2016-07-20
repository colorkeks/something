class TableController < ApplicationController
  def index
    if current_user
      # if current_user.has_role? :admin

      # else

      # end
    else
      redirect_to new_user_session_path
    end
  end
end