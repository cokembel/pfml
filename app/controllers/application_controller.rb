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
  		if User.find_by_id(session[:user_id])
  			User.find_by_id(session[:user_id])
  		else
  			if not User.find_by_name("Anonymous")
  				@user = User.new(:name => "Anonymous", :password => "password")
  				@user.save
  				return @user
  			else
  				return User.find_by_name("Anonymous")
  			end
  		end
  	end

end
