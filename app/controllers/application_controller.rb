class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :set_user

	def set_user
    	if user_signed_in?
	  		@progress = current_user.points
	  		@checklist = current_user.checklists
		end
	end

	def commencer
	  @checklists = Checklist.all
	end
end
