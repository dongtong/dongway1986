class ApplicationController < ActionController::Base
  protect_from_forgery

  def admin?
  	unless current_user.admin?
  		redirect_to root_path,notice: 'You have not priority to do that!'
  	end
  end
  
end
