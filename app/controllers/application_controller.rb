class ApplicationController < ActionController::Base
	Paperclip::Railtie.insert
  before_filter :authorize
  protect_from_forgery

  protected

  	def authorize
  		unless User.find_by_id(session[:user_id])
  			redirect_to login_path, :notice => "Please log in"
  		end
  	end

  	def getUser
  		return User.find_by_id(session[:user_id])
  	end

end
