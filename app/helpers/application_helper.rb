module ApplicationHelper
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

    def memberSignedIn?
      if User.find_by_id(session[:user_id])
        true
      else
        false
      end
    end
end
